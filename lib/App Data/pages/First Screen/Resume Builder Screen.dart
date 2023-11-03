import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Native%20and%20Banner%20Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/Controller/Tap Controller.dart';
import '../../services/functions/App Functions/app Functions.dart';
import '../../utils/color.dart';
import '../../utils/images.dart';
import '../../widgets/global/MediaQuery/size.dart';
import '../Choose Template Screen/Choose Template Screen.dart';
import '../Create Resume/Create Resume Screen.dart';
import '../View and Share Resume Screen/View and Share Resume Screen.dart';

class ResumeBuilderScreen extends StatefulWidget {
  const ResumeBuilderScreen({super.key});

  @override
  State<ResumeBuilderScreen> createState() => _ResumeBuilderScreenState();
}

class _ResumeBuilderScreenState extends State<ResumeBuilderScreen> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenSize.fSize_30()),
                    bottomLeft: Radius.circular(ScreenSize.fSize_30())),
                // borderRadius: BorderRadius.circular(ScreenSize.fSize_16()),
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFB1F2EF).withOpacity(0.9),
                    const Color(0xFF59E2D7).withOpacity(0.9),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Text(
                    "Exit",
                    style: GoogleFonts.openSans(
                        fontSize: ScreenSize.fSize_30(),
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: ScreenSize.fSize_10()),
                  Text(
                    "Are you sure you want to Exit ?",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: ScreenSize.horizontalBlockSize! * 6,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.horizontalBlockSize! * 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(ScreenSize.fSize_15())),
                            color: const Color(0xFF00A59D),
                          ),
                          child: Center(
                            child: Text(
                              "No",
                              style: GoogleFonts.beVietnamPro(
                                  color: Colors.white,
                                  // color: const Color(0xFFCB4D50),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => exit(0),
                        child: Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.horizontalBlockSize! * 35,
                          // color: Colors.red,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(ScreenSize.fSize_15())),
                            color: const Color(0xFF00A59D),
                          ),
                          child: Center(
                            child: Text(
                              "Yes",
                              style: GoogleFonts.beVietnamPro(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        endDrawer: Drawer(
          child: Padding(
            padding: EdgeInsets.all(ScreenSize.fSize_10()),
            child: Column(
              children: [
                SizedBox(height: ScreenSize.fSize_40()),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
                    color: appColorController.boxColor.withOpacity(0.3),
                    border: Border.all(color: appColorController.boxColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(ScreenSize.fSize_10()),
                    child: Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_70(),
                          width: ScreenSize.fSize_70(),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                color: appColorController.boxColor, width: 2),
                          ),
                          child: Image.asset(
                            appImageDataController.createResume,
                            scale: 1.5,
                          ),
                        ),
                        SizedBox(width: ScreenSize.fSize_15()),
                        Text(
                          "Resume\nBuilder",
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.openSans(
                              fontSize: ScreenSize.fSize_24(),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_20()),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
                    color: appColorController.boxColor.withOpacity(0.3),
                    border: Border.all(color: appColorController.boxColor),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(ScreenSize.fSize_10()),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            appFunctionController.rateURL();
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.star_rounded),
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                "Rate Us",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenSize.fSize_14(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize.fSize_6()),
                          child: Divider(
                            color: appColorController.boxColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            appFunctionController.shareURL();
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.share),
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                "Share With Friends",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenSize.fSize_14(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize.fSize_6()),
                          child: Divider(
                            color: appColorController.boxColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                            appFunctionController.privacyURL();
                          },
                          child: Row(
                            children: [
                              const Icon(Icons.privacy_tip),
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                "Privacy Policy",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenSize.fSize_14(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: ScreenSize.fSize_6()),
                          child: Divider(
                            color: appColorController.boxColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/image/local image/terms-and-conditions.png",
                                height: ScreenSize.horizontalBlockSize! * 6.3,
                              ),
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                "Terms Of Service",
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ScreenSize.fSize_14(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    appFunctionController.resumeBuilderTopDesign(),
                    Padding(
                      padding: EdgeInsets.all(ScreenSize.fSize_15()),
                      child: Image.asset(
                        appImageDataController.vector2,
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    appFunctionController.resumeBuilderContainer(
                      context,
                      "Create Resume",
                      appImageDataController.createResume,
                      () {
                        tapController.showbuttonad(context, "/CreateResumeScreen",
                            "/ResumeBuilderScreen", "");
                        // Get.to(() => const CreateResumeScreen());
                      },
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    resumeNativeADController.showNative("listTile", "/ResumeBuilderScreen"),
                    SizedBox(height: ScreenSize.fSize_20()),
                    appFunctionController.resumeBuilderContainer(
                      context,
                      "Choose Template",
                      appImageDataController.chooseTemplate,
                      () {
                        tapController.showbuttonad(context, "/ChooseTemplateScreen",
                            "/ResumeBuilderScreen", "");
                        // Get.to(() => ChooseTemplateScreen());
                      },
                    ),
                    appFunctionController.resumeBuilderContainer(
                      context,
                      "View & Share Resume",
                      appImageDataController.viewandShare,
                      () async {
                        final prefs = await SharedPreferences.getInstance();
                        final data = prefs.getInt("Template");
                        print("uireietwrywte $data");
                        tapController.showbuttonad(
                            context,
                            "/ViewAndShareResumeScreen",
                            "/ResumeBuilderScreen",
                            data);
                        // Get.to(() => ViewAndShareResumeScreen());
                      },
                    ),
                    SizedBox(height: ScreenSize.fSize_55()),
                  ],
                ),
              ),
            ),
                    resumeBannerADController.showBanner("/ResumeBuilderScreen"),
          ],
        ),
      ),
    );
  }
}
