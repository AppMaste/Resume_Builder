import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_to_pdf/export_delegate.dart';
import 'package:flutter_to_pdf/flutter_to_pdf.dart';
import 'package:resume_builder/App%20Data/widgets/global/MediaQuery/size.dart';

import 'App Data/services/functions/App Functions/Preview Function.dart';



class MyCircularWidget extends StatefulWidget {
  const MyCircularWidget({super.key});

  @override
  State<MyCircularWidget> createState() => _MyCircularWidgetState();
}

class _MyCircularWidgetState extends State<MyCircularWidget> {
  final ExportDelegate exportDelegate = ExportDelegate();

  Future<void> saveFile(document, String name) async {
    final File file = File('/storage/emulated/0/Download/$name.pdf');

    await file.writeAsBytes(await document.save());
    debugPrint('Saved exported PDF at: ${file.path}');
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
              onTap: () async {
                final pdf = await exportDelegate.exportToPdfDocument('someFrameId');
                saveFile(pdf, 'static-example');
              },
              child: ExportFrame(
                exportDelegate: exportDelegate,
                frameId: 'someFrameId',
                child: Container(
                  color: Colors.amber,
                  // height: 100,
                  width: 2000,
                  child: preViewAppController.templatePreview(),
                ), // the widget you want to export
              )),
        ),
      ),
    );
  }
}