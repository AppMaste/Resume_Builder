import 'dart:io';

import 'package:flutter/material.dart';

import '../../services/functions/App Functions/app Functions.dart';
import '../../utils/color.dart';
import '../../utils/images.dart';
import '../../utils/style.dart';
import '../../widgets/global/MediaQuery/size.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: appColorController.bagroundColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_10()),
              child: Image.asset(appImageDataController.vector),
            ),
            Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_10()),
              child: Text(
                "Create Your Resume",
                style: appFontStyleData.mainTitle,
              ),
            ),
            appFunctionController.getStartedContainer(context),
          ],
        ),
      ),
    );
  }
}
