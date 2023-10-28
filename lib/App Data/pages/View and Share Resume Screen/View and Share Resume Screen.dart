// ignore_for_file: invalid_use_of_protected_member

import 'dart:async';
import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Create%20Resume%20Screen.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Personal%20information%20Screen.dart';
import 'package:intl/intl.dart';
import '../../services/Controller/Tap Controller.dart';
import '../../utils/color.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';
import '../Create Resume/Sub Screen/Interest Screen/Add Interests Screen.dart';

class ViewAndShareResumeScreen extends StatefulWidget {
  ViewAndShareResumeScreen({super.key});

  @override
  State<ViewAndShareResumeScreen> createState() =>
      _ViewAndShareResumeScreenState();
}

class _ViewAndShareResumeScreenState extends State<ViewAndShareResumeScreen> {
  var percent = 0.79;

  @override
  Widget build(BuildContext context) {
    print("objecttttt $saveResume");
    print("objecttttt $resumeTime");
    print("objecttttt $resumeDate");
    print("objecttttt $resumeNumber");
    return Scaffold(
      appBar: appbarController.customAppBarController(context, "Save Resumes"),
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
                                        width: ScreenSize.horizontalBlockSize! *
                                            50,
                                        child: Text(
                                          "${saveResume.value[index]}",
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.openSans(
                                              fontWeight: FontWeight.bold,
                                              fontSize: ScreenSize.fSize_17()),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Last update: ${resumeDate.value[index]}, ${resumeTime.value[index]}",
                                        style: GoogleFonts.openSans(
                                            fontSize: ScreenSize.fSize_10()),
                                      ),
                                      SizedBox(width: ScreenSize.fSize_38()),
                                      GestureDetector(
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
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              ScreenSize
                                                                  .fSize_10())),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(
                                                        ScreenSize.fSize_14()),
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
                                                                    scale: 32.0,
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
                                                                          FontWeight
                                                                              .w700,
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
                                              // builder: (ctx) => AlertDialog(
                                              //   backgroundColor: Colors.white,
                                              //   shape: RoundedRectangleBorder(
                                              //     borderRadius:
                                              //         BorderRadius.circular(30.0),
                                              //   ),
                                              //   content: const Text(
                                              //       "Are you Sure you want to delete the following resume?"),
                                              //   icon:  Align(
                                              //     alignment: Alignment.topRight,
                                              //     child: GestureDetector(
                                              //       onTap: () {
                                              //         Get.back();
                                              //       },
                                              //       child: Icon(
                                              //         Icons.cancel_outlined,
                                              //         color: appColorController.boxColor,
                                              //       ),
                                              //     ),
                                              //   ),
                                              //   actions: [
                                              //     TextButton(
                                              //       onPressed: () {
                                              //         // var aa = interestName.removeAt(index);
                                              //         // var bb = interestImage.removeAt(index);
                                              //         // var cc = interestSelect.removeAt(index);
                                              //         // interest.refresh();
                                              //         // interest2.refresh();
                                              //         // interest3.refresh();
                                              //         // interest.value.add(aa);
                                              //         // interest2.value.add(bb);
                                              //         // interest3.value.add(cc);
                                              //         // print("aaaaaaaaaaaa $aa");
                                              //         // print("bbbbbbbbbbbb $bb");
                                              //         // print("cccccccccccc $cc");
                                              //         Navigator.of(ctx).pop();
                                              //       },
                                              //       child: Container(
                                              //         padding: const EdgeInsets.all(14),
                                              //         child: Text(
                                              //           "Delete",
                                              //           style: GoogleFonts.openSans(
                                              //             color: Colors.black,
                                              //             fontWeight: FontWeight.bold,
                                              //           ),
                                              //         ),
                                              //       ),
                                              //     ),
                                              //   ],
                                              // ),
                                            );
                                            // showDialog(
                                            //   context: context,
                                            //   builder: (ctx) =>
                                            //       AlertDialog(
                                            //         title: const Text(
                                            //             "Alert Dialog Box"),
                                            //         content: const Text(
                                            //             "You have raised a Alert Dialog Box"),
                                            //         actions: <Widget>[
                                            //           TextButton(
                                            //             onPressed: () {
                                            //               Navigator.of(ctx).pop();
                                            //             },
                                            //             child: Container(
                                            //               color: Colors.green,
                                            //               padding: const EdgeInsets.all(
                                            //                   14),
                                            //               child: const Text("okay"),
                                            //             ),
                                            //           ),
                                            //         ],
                                            //       ),
                                            // );
                                          },
                                          child: Icon(
                                            Icons.delete_forever,
                                            color: appColorController.boxColor,
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
    );
  }
}
