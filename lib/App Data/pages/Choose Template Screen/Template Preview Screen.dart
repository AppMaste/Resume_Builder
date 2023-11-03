// ignore_for_file: must_be_immutable, invalid_use_of_protected_member, deprecated_member_use, use_build_context_synchronously

import 'dart:io';
import 'dart:math';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_to_pdf/export_delegate.dart';
import 'package:get/get.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:pdf/pdf.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/functions/App Functions/Preview Function 2.dart';
import '../../services/functions/App Functions/Preview Function.dart';
import '../../services/functions/App Functions/Tost Function.dart';
import '../../services/functions/App Functions/app Functions.dart';
import '../../utils/Resume Slider.dart';
import '../../utils/color.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';
import '../Create Resume/Sub Screen/Skills Screen/Add Skills Screen.dart';

class TemplatePreviewScreen extends StatefulWidget {
  TemplatePreviewScreen({super.key});

  @override
  State<TemplatePreviewScreen> createState() => _TemplatePreviewScreenState();
}

class _TemplatePreviewScreenState extends State<TemplatePreviewScreen> {
  final ExportDelegate exportDelegate = ExportDelegate();
  ScreenshotController screenshotController = ScreenshotController();

  var argument = Get.arguments;

  var slider = 20.0.obs;
  var resume11 = 20.0.obs;

  var resume12 = 30.0.obs;
  var resume13 = 40.0.obs;
  var resume14 = 50.0.obs;
  var resume15 = 60.0.obs;
  var resume16 = 70.0.obs;

  var container;
  var imagestore;

  var pdfValue;

  final picker = ImagePicker();
  final pdf = pw.Document();

  @override
  Widget build(BuildContext context) {
    double angle = 30.0 * pi / 180.0;
    print("Argument $argument");
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/TemplatePreviewScreen");
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: appbarController.customAppBarController(context, "Preview"),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(ScreenSize.fSize_6()),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: appColorController.boxColor,
                          width: 2,
                        ),
                      ),
                      child: argument == 0
                          ? preViewAppController.templatePreview()
                          : argument == 1
                              ? preViewAppController.template2Preview()
                              : argument == 2
                                  ? preViewAppController.template3Preview()
                                  : argument == 3
                                      ? preViewAppController.template4Preview()
                                      : argument == 4
                                          ? preViewAppController
                                              .template5Preview()
                                          : argument == 5
                                              ? preViewAppController
                                                  .template6Preview()
                                              : argument == 6
                                                  ? preViewAppController2
                                                      .template7Preview()
                                                  : argument == 7
                                                      ? preViewAppController2
                                                          .template8Preview()
                                                      : argument == 8
                                                          ? preViewAppController2
                                                              .template9Preview()
                                                          : argument == 9
                                                              ? preViewAppController2
                                                                  .template10Preview()
                                                              : argument == 10
                                                                  ? Obx(
                                                                      () => preViewAppController2
                                                                          .template11Preview(
                                                                        context,
                                                                        // Slider 1
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            skillDoubleValue.value[0],
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          skillDoubleValue.value[0] =
                                                                              value;
                                                                        }),
                                                                        // Slider 2
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            skillDoubleValue.value[1],
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          skillDoubleValue.value[1] =
                                                                              value;
                                                                        }),
                                                                        // Slider 3
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            skillDoubleValue.value[2],
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          skillDoubleValue.value[2] =
                                                                              value;
                                                                        }),
                                                                        // Slider 4
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            skillDoubleValue.value[3],
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          skillDoubleValue.value[3] =
                                                                              value;
                                                                        }),
                                                                        // Slider 5
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            skillDoubleValue.value[4],
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          skillDoubleValue.value[4] =
                                                                              value;
                                                                        }),
                                                                        // Slider 6
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume11.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume11.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                        // Professional Skill Slider 1
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume11.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume11.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                        // Professional Skill Slider 2
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume12.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume12.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                        // Professional Skill Slider 3
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume13.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume13.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                        // Professional Skill Slider 4
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume14.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume14.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                        // Professional Skill Slider 5
                                                                        resume11CustomSlider.slider11(
                                                                            context,
                                                                            resume15.value,
                                                                            (value) {
                                                                          setState(
                                                                              () {});
                                                                          resume15.value =
                                                                              value;
                                                                          // resume11
                                                                        }),
                                                                      ),
                                                                    )
                                                                  : argument ==
                                                                          11
                                                                      ? preViewAppController2
                                                                          .template12Preview()
                                                                      : argument ==
                                                                              12
                                                                          ? Obx(
                                                                              () => preViewAppController2.template13Preview(
                                                                                context,
                                                                                skillDoubleValue.value[0],
                                                                                (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[0] = value;
                                                                                },
                                                                                skillDoubleValue.value[1],
                                                                                (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[1] = value;
                                                                                },
                                                                                skillDoubleValue.value[2],
                                                                                (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[2] = value;
                                                                                },
                                                                                skillDoubleValue.value[3],
                                                                                (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[3] = value;
                                                                                },
                                                                              ),
                                                                            )
                                                                          : Container(
                                                                              height: 100,
                                                                              width: 100,
                                                                              color: Colors.red,
                                                                            ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_150()),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.maxFinite,
                height: ScreenSize.fSize_140(),
                decoration: BoxDecoration(
                  color: appColorController.boxColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ScreenSize.fSize_15()),
                    topRight: Radius.circular(ScreenSize.fSize_15()),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      spreadRadius: 3,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    appFunctionController.previewContainer(
                      context,
                      "Download Image",
                      "assets/image/Icons/Download pdf.png",
                      () async {
                        container = MaterialApp(
                          debugShowCheckedModeBanner: false,
                          home: Scaffold(
                            body: Container(
                                // padding: const EdgeInsets.all(30.0),
                                // decoration: BoxDecoration(
                                // border: Border.all(color: Colors.blueAccent, width: 5.0),
                                // color: Colors.pink,
                                // ),
                                child: argument == 0
                                    ? preViewAppController.templatePreview()
                                    : argument == 1
                                        ? preViewAppController.template2Preview()
                                        : argument == 2
                                            ? preViewAppController.template3Preview()
                                            : argument == 3
                                                ? preViewAppController
                                                    .template4Preview()
                                                : argument == 4
                                                    ? preViewAppController
                                                        .template5Preview()
                                                    : argument == 5
                                                        ? preViewAppController
                                                            .template6Preview()
                                                        : argument == 6
                                                            ? preViewAppController2
                                                                .template7Preview()
                                                            : argument == 7
                                                                ? preViewAppController2
                                                                    .template8Preview()
                                                                : argument == 8
                                                                    ? preViewAppController2
                                                                        .template9Preview()
                                                                    : argument ==
                                                                            9
                                                                        ? preViewAppController2
                                                                            .template10Preview()
                                                                        : argument ==
                                                                                10
                                                                            ? preViewAppController2.template11Preview(
                                                                                context,
                                                                                // Slider 1
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[0], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[0] = value;
                                                                                }),
                                                                                // Slider 2
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[1], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[1] = value;
                                                                                }),
                                                                                // Slider 3
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[2], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[2] = value;
                                                                                }),
                                                                                // Slider 4
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[3], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[3] = value;
                                                                                }),
                                                                                // Slider 5
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[4], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[4] = value;
                                                                                }),
                                                                                // Slider 6
                                                                                resume11CustomSlider.slider11(context, resume11.value, (value) {
                                                                                  setState(() {});
                                                                                  resume11.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 1
                                                                                resume11CustomSlider.slider11(context, resume11.value, (value) {
                                                                                  setState(() {});
                                                                                  resume11.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 2
                                                                                resume11CustomSlider.slider11(context, resume12.value, (value) {
                                                                                  setState(() {});
                                                                                  resume12.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 3
                                                                                resume11CustomSlider.slider11(context, resume13.value, (value) {
                                                                                  setState(() {});
                                                                                  resume13.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 4
                                                                                resume11CustomSlider.slider11(context, resume14.value, (value) {
                                                                                  setState(() {});
                                                                                  resume14.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 5
                                                                                resume11CustomSlider.slider11(context, resume15.value, (value) {
                                                                                  setState(() {});
                                                                                  resume15.value = value;
                                                                                  // resume11
                                                                                }),
                                                                              )
                                                                            : argument == 11
                                                                                ? preViewAppController2.template12Preview()
                                                                                : argument == 12
                                                                                    ? preViewAppController2.template13Preview(
                                                                                        context,
                                                                                        skillDoubleValue.value[0],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[0] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[1],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[1] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[2],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[2] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[3],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[3] = value;
                                                                                        },
                                                                                      )
                                                                                    : Container()),
                          ),
                        );
                        screenshotController
                            .captureFromWidget(
                                InheritedTheme.captureAll(
                                    context, Material(child: container)),
                                delay: const Duration(seconds: 1))
                            .then((capturedImage) async {
                          // imagestore = capturedImage;
                          _saved(capturedImage);
                          tostController.successTost();
                          print("image Store Path:$imagestore");
                        });
                      },
                    ),
                    appFunctionController.previewContainer(
                      context,
                      "Open Pdf",
                      "assets/image/Icons/Open pdf.png",
                      () {
                        openPDF();
                      },
                    ),
                    appFunctionController.previewContainer(
                      context,
                      "Download Pdf",
                      "assets/image/Icons/Download pdf.png",
                      () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        container = MaterialApp(
                          debugShowCheckedModeBanner: false,
                          home: Scaffold(
                            body: Container(
                                // padding: const EdgeInsets.all(30.0),
                                // decoration: BoxDecoration(
                                // border: Border.all(color: Colors.blueAccent, width: 5.0),
                                // color: Colors.pink,
                                // ),
                                child: argument == 0
                                    ? preViewAppController.templatePreview()
                                    : argument == 1
                                        ? preViewAppController.template2Preview()
                                        : argument == 2
                                            ? preViewAppController.template3Preview()
                                            : argument == 3
                                                ? preViewAppController
                                                    .template4Preview()
                                                : argument == 4
                                                    ? preViewAppController
                                                        .template5Preview()
                                                    : argument == 5
                                                        ? preViewAppController
                                                            .template6Preview()
                                                        : argument == 6
                                                            ? preViewAppController2
                                                                .template7Preview()
                                                            : argument == 7
                                                                ? preViewAppController2
                                                                    .template8Preview()
                                                                : argument == 8
                                                                    ? preViewAppController2
                                                                        .template9Preview()
                                                                    : argument ==
                                                                            9
                                                                        ? preViewAppController2
                                                                            .template10Preview()
                                                                        : argument ==
                                                                                10
                                                                            ? preViewAppController2.template11Preview(
                                                                                context,
                                                                                // Slider 1
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[0], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[0] = value;
                                                                                }),
                                                                                // Slider 2
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[1], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[1] = value;
                                                                                }),
                                                                                // Slider 3
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[2], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[2] = value;
                                                                                }),
                                                                                // Slider 4
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[3], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[3] = value;
                                                                                }),
                                                                                // Slider 5
                                                                                resume11CustomSlider.slider11(context, skillDoubleValue.value[4], (value) {
                                                                                  setState(() {});
                                                                                  skillDoubleValue.value[4] = value;
                                                                                }),
                                                                                // Slider 6
                                                                                resume11CustomSlider.slider11(context, resume11.value, (value) {
                                                                                  setState(() {});
                                                                                  resume11.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 1
                                                                                resume11CustomSlider.slider11(context, resume11.value, (value) {
                                                                                  setState(() {});
                                                                                  resume11.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 2
                                                                                resume11CustomSlider.slider11(context, resume12.value, (value) {
                                                                                  setState(() {});
                                                                                  resume12.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 3
                                                                                resume11CustomSlider.slider11(context, resume13.value, (value) {
                                                                                  setState(() {});
                                                                                  resume13.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 4
                                                                                resume11CustomSlider.slider11(context, resume14.value, (value) {
                                                                                  setState(() {});
                                                                                  resume14.value = value;
                                                                                  // resume11
                                                                                }),
                                                                                // Professional Skill Slider 5
                                                                                resume11CustomSlider.slider11(context, resume15.value, (value) {
                                                                                  setState(() {});
                                                                                  resume15.value = value;
                                                                                  // resume11
                                                                                }),
                                                                              )
                                                                            : argument == 11
                                                                                ? preViewAppController2.template12Preview()
                                                                                : argument == 12
                                                                                    ? preViewAppController2.template13Preview(
                                                                                        context,
                                                                                        skillDoubleValue.value[0],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[0] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[1],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[1] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[2],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[2] = value;
                                                                                        },
                                                                                        skillDoubleValue.value[3],
                                                                                        (value) {
                                                                                          setState(() {});
                                                                                          skillDoubleValue.value[3] = value;
                                                                                        },
                                                                                      )
                                                                                    : Container()),
                          ),
                        );
                        screenshotController
                            .captureFromWidget(
                                InheritedTheme.captureAll(
                                    context, Material(child: container)),
                                delay: const Duration(seconds: 1))
                            .then((capturedImage) async {
                          getPdf(capturedImage);
                          pdfValue =
                              "/storage/emulated/0/Android/data/com.example.resume_builder/Resume.pdf";
                          await prefs.setString("PDF", pdfValue);

                          tostController.successTost();
                          print("image Store Path:$imagestore");
                        });
                      },
                    ),
                    appFunctionController.previewContainer(
                      context,
                      "Share Pdf",
                      "assets/image/Icons/Share pdf.png",
                      () async {
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final data = prefs.getString("PDF");
                        // print("bjafasbfjasf $data");
                        if (data == null) {
                          Share.share("https://play.google.com/store/apps?hl=en-IN");
                        } else {
                          var path =
                              "/storage/emulated/0/Android/data/com.example.resume_builder/Resume.pdf";
                          Share.shareFiles([path], text: 'your pdf!');
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openPDF() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) return;
    final file = result.files.first;

    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  _saved(image) async {
    final result = await ImageGallerySaver.saveImage(image);
    print("File Saved to Gallery $result");
  }

  Future getPdf(Uint8List screenShot) async {
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Center(
              child: pw.Padding(
                  padding:
                      pw.EdgeInsets.symmetric(vertical: ScreenSize.fSize_15()),
                  child: pw.Image(pw.MemoryImage(screenShot),
                      fit: pw.BoxFit.fill)));
        },
      ),
    );
    final dir = await getDownloadsDirectory();
    File pdfFile = File(
        '/storage/emulated/0/Android/data/com.example.resume_builder/Resume.pdf');
    print("objecttt $dir");
    pdfFile.writeAsBytesSync(await pdf.save());
  }
}
