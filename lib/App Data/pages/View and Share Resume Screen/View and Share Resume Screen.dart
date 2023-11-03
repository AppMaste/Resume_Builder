// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Create%20Resume%20Screen.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Personal%20information%20Screen.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/Controller/Tap Controller.dart';
import '../../services/functions/App Functions/Preview Function 2.dart';
import '../../services/functions/App Functions/Preview Function.dart';
import '../../services/functions/App Functions/Tost Function.dart';
import '../../utils/Resume Slider.dart';
import '../../utils/color.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';
import '../Create Resume/Sub Screen/Interest Screen/Add Interests Screen.dart';
import '../Create Resume/Sub Screen/Skills Screen/Add Skills Screen.dart';

class ViewAndShareResumeScreen extends StatefulWidget {
  ViewAndShareResumeScreen({super.key});

  @override
  State<ViewAndShareResumeScreen> createState() =>
      _ViewAndShareResumeScreenState();
}

class _ViewAndShareResumeScreenState extends State<ViewAndShareResumeScreen> {
  ScreenshotController screenshotController = ScreenshotController();
  var percent = 0.79;
  var argument = Get.arguments;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  var container;
  var imagestore;

  getData() async {
    var name = await SharedPreferences.getInstance();
    argument = (name.getInt("Template"))!;
  }



  var resume11 = 20.0.obs;
  var resume12 = 30.0.obs;
  var resume13 = 40.0.obs;
  var resume14 = 50.0.obs;
  var resume15 = 60.0.obs;
  var resume16 = 70.0.obs;

  @override
  Widget build(BuildContext context) {
    // print("objecttttt $saveResume");
    // print("objecttttt $resumeTime");
    // print("objecttttt $resumeDate");
    print("objecttttt ${argument}");

    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/ViewAndShareResumeScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar:
            appbarController.customAppBarController(context, "Save Resumes"),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  GestureDetector(
                    onTap: () {
                      tapController.showbuttonad(context, "/CreateResumeScreen",
                          "/ViewAndShareResumeScreen", "");
                      // Get.to(() => const CreateResumeScreen());
                    },
                    child: Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.fSize_250(),
                      decoration: BoxDecoration(
                          color: appColorController.boxColor,
                          borderRadius:
                              BorderRadius.circular(ScreenSize.fSize_100())),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/image/Icons/Create new.png"),
                          Text(
                            "Create New Resume",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenSize.fSize_18(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_30()),
                  Obx(
                    () => Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: saveResume.value.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: appColorController.boxColor
                                      .withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(
                                    ScreenSize.fSize_10(),
                                  ),
                                  border: Border.all(
                                      color: appColorController.boxColor,
                                      width: 2)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: ScreenSize.fSize_20(),
                                        vertical: ScreenSize.fSize_10()),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          // color: Colors.red,
                                          width:
                                              ScreenSize.horizontalBlockSize! *
                                                  50,
                                          child: Text(
                                            "${saveResume.value[index]}",
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.openSans(
                                                fontWeight: FontWeight.bold,
                                                fontSize:
                                                    ScreenSize.fSize_17()),
                                          ),
                                        ),
                                        CircularPercentIndicator(
                                          radius: 25.0,
                                          lineWidth: 3.0,
                                          percent:
                                              resumeNumber.value[index] / 100,
                                          center: Text(
                                            "${((resumeNumber.value[index] / 100) * 100).toStringAsFixed(0)}%",
                                            style: GoogleFonts.openSans(),
                                          ),
                                          progressColor:
                                              appColorController.boxColor,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: ScreenSize.fSize_20(),
                                    ),
                                    child: Divider(
                                      thickness: 2,
                                      color: appColorController.boxColor
                                          .withOpacity(0.2),
                                    ),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_10()),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: ScreenSize.fSize_20(),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Last update: ${resumeDate.value[index]}, ${resumeTime.value[index]}",
                                          style: GoogleFonts.openSans(
                                              fontSize: ScreenSize.fSize_10()),
                                        ),
                                        SizedBox(width: ScreenSize.fSize_38()),
                                        GestureDetector(
                                          onTap: () {
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
                                                        ? preViewAppController
                                                            .templatePreview()
                                                        : argument == 1
                                                            ? preViewAppController
                                                                .template2Preview()
                                                            : argument == 2
                                                                ? preViewAppController
                                                                    .template3Preview()
                                                                : argument == 3
                                                                    ? preViewAppController
                                                                        .template4Preview()
                                                                    : argument == 4
                                                                        ? preViewAppController
                                                                            .template5Preview()
                                                                        : argument ==
                                                                                5
                                                                            ? preViewAppController.template6Preview()
                                                                            : argument == 6
                                                                                ? preViewAppController2.template7Preview()
                                                                                : argument == 7
                                                                                    ? preViewAppController2.template8Preview()
                                                                                    : argument == 8
                                                                                        ? preViewAppController2.template9Preview()
                                                                                        : argument == 9
                                                                                            ? preViewAppController2.template10Preview()
                                                                                            : argument == 10
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
                                                        context,
                                                        Material(
                                                            child: container)),
                                                    delay: const Duration(
                                                        seconds: 1))
                                                .then((capturedImage) async {
                                              // imagestore = capturedImage;
                                              getPdf(capturedImage);
                                              tostController.successTost();
                                              print(
                                                  "image Store Path:$imagestore");
                                            });
                                          },
                                          child: Icon(
                                            Icons.download_rounded,
                                            color: appColorController.boxColor,
                                          ),
                                        ),
                                        SizedBox(width: ScreenSize.fSize_10()),
                                        GestureDetector(
                                          child: Icon(
                                            Icons.share_rounded,
                                            color: appColorController.boxColor,
                                          ),
                                        ),
                                        SizedBox(width: ScreenSize.fSize_10()),
                                        GestureDetector(
                                          child: GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (context) => Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          ScreenSize.fSize_20(),
                                                      vertical: ScreenSize
                                                              .horizontalBlockSize! *
                                                          70),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius
                                                            .circular(ScreenSize
                                                                .fSize_10())),
                                                    child: Padding(
                                                      padding: EdgeInsets.all(
                                                          ScreenSize
                                                              .fSize_14()),
                                                      child:
                                                          SingleChildScrollView(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () {
                                                                  Get.back();
                                                                },
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Image.asset(
                                                                      "assets/image/local image/close.png",
                                                                      scale:
                                                                          32.0,
                                                                      color: appColorController
                                                                          .boxColor,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: ScreenSize
                                                                    .fSize_10()),
                                                            Text(
                                                              "Are you Sure you want to delete the\nfollowing resume?",
                                                              style: GoogleFonts
                                                                  .openSans(
                                                                      fontSize:
                                                                          ScreenSize
                                                                              .fSize_17()),
                                                            ),
                                                            SizedBox(
                                                                height: ScreenSize
                                                                    .fSize_10()),
                                                            Text(
                                                              "${saveResume.value[index]}",
                                                              style: GoogleFonts
                                                                  .openSans(
                                                                fontSize: ScreenSize
                                                                    .fSize_17(),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                                height: ScreenSize
                                                                    .fSize_6()),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  TextButton(
                                                                    child: Text(
                                                                      "Delete",
                                                                      style: GoogleFonts
                                                                          .openSans(
                                                                        color: appColorController
                                                                            .boxColor,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                      ),
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      setState(
                                                                          () {});
                                                                      Get.back();
                                                                      saveResume
                                                                          .value
                                                                          .removeAt(
                                                                              index);
                                                                      resumeTime
                                                                          .value
                                                                          .removeAt(
                                                                              index);
                                                                      resumeDate
                                                                          .value
                                                                          .removeAt(
                                                                              index);
                                                                      resumeNumber
                                                                          .value
                                                                          .removeAt(
                                                                              index);
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.delete_forever,
                                              color:
                                                  appColorController.boxColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_10()),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
