// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'dart:math';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:screenshot/screenshot.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

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
  ScreenshotController screenshotController = ScreenshotController();

  var argument = Get.arguments;

  var slider = 20.0.obs;
  var resume11 = 20.0.obs;

  var resume12 = 30.0.obs;
  var resume13 = 40.0.obs;
  var resume14 = 50.0.obs;
  var resume15 = 60.0.obs;
  var resume16 = 70.0.obs;

  @override
  Widget build(BuildContext context) {
    double angle = 30.0 * pi / 180.0;
    print("Argument $argument");
    return Scaffold(
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
                            ? tostController.template2Preview()
                            : argument == 2
                                ? tostController.template3Preview()
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
                                                                          skillDoubleValue
                                                                              .value[0],
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        skillDoubleValue.value[0] =
                                                                            value;
                                                                      }),
                                                                      // Slider 2
                                                                      resume11CustomSlider.slider11(
                                                                          context,
                                                                          skillDoubleValue
                                                                              .value[1],
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        skillDoubleValue.value[1] =
                                                                            value;
                                                                      }),
                                                                      // Slider 3
                                                                      resume11CustomSlider.slider11(
                                                                          context,
                                                                          skillDoubleValue
                                                                              .value[2],
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        skillDoubleValue.value[2] =
                                                                            value;
                                                                      }),
                                                                      // Slider 4
                                                                      resume11CustomSlider.slider11(
                                                                          context,
                                                                          skillDoubleValue
                                                                              .value[3],
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        skillDoubleValue.value[3] =
                                                                            value;
                                                                      }),
                                                                      // Slider 5
                                                                      resume11CustomSlider.slider11(
                                                                          context,
                                                                          skillDoubleValue
                                                                              .value[4],
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        skillDoubleValue.value[4] =
                                                                            value;
                                                                      }),
                                                                      // Slider 6
                                                                      resume11CustomSlider.slider11(
                                                                          context,
                                                                          resume11
                                                                              .value,
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
                                                                          resume11
                                                                              .value,
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
                                                                          resume12
                                                                              .value,
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
                                                                          resume13
                                                                              .value,
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
                                                                          resume14
                                                                              .value,
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
                                                                          resume15
                                                                              .value,
                                                                          (value) {
                                                                        setState(
                                                                            () {});
                                                                        resume15.value =
                                                                            value;
                                                                        // resume11
                                                                      }),
                                                                    ),
                                                                  )
                                                                : argument == 11
                                                                    ? preViewAppController2
                                                                        .template12Preview()
                                                                    : argument ==
                                                                            12
                                                                        ? Obx(() =>
                                                                            preViewAppController2.template13Preview(
                                                                              context,
                                                                              slider.value,
                                                                              (double value) {
                                                                                slider.value = value;
                                                                              },
                                                                            ))
                                                                        : Container(
                                                                            height:
                                                                                100,
                                                                            width:
                                                                                100,
                                                                            color:
                                                                                Colors.red,
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
                    () {
                      // var container = Container(
                      //     padding: const EdgeInsets.all(30.0),
                      //     decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.blueAccent, width: 5.0),
                      //       color: Colors.pink,
                      //     ),
                      //     child: Text(
                      //       "This is an invisible widget",
                      //       style: Theme.of(context).textTheme.titleLarge,
                      //     ));

                      //   screenshotController
                      //     .captureFromWidget(
                      //         InheritedTheme.captureAll(
                      //             context, Material(child: container)),
                      //         delay: const Duration(seconds: 1))
                      //     .then((capturedImage) {
                      //   ShowCapturedWidget(context, capturedImage);
                      //   _saved(capturedImage);
                      // });
                    },
                  ),
                  appFunctionController.previewContainer(
                    context,
                    "Open Pdf",
                    "assets/image/Icons/Open pdf.png",
                    () {},
                  ),
                  appFunctionController.previewContainer(
                    context,
                    "Download Pdf",
                    "assets/image/Icons/Download pdf.png",
                    () {},
                  ),
                  appFunctionController.previewContainer(
                    context,
                    "Share Pdf",
                    "assets/image/Icons/Share pdf.png",
                    () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<dynamic> ShowCapturedWidget(
      BuildContext context, Uint8List capturedImage) {
    // return preViewAppController.templatePreview();
    return showDialog(
        useSafeArea: false,
        context: context,
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Captured widget screenshot"),
            ),
            body: Center(
                child: capturedImage != null
                    ? Image.memory(capturedImage)
                    : Container()),
          );
        });
  }

  _saved(image) async {
    final result = await ImageGallerySaver.saveImage(image);
    if (kDebugMode) {
      print("File Saved to Gallery $result");
    }
  }
}
