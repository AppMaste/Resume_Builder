// ignore_for_file: invalid_use_of_protected_member

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Native%20and%20Banner%20Controller.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import '../../../../utils/TextData.dart';
import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextField.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Object Screen.dart';

class AddObjectiveScreen extends StatefulWidget {
  const AddObjectiveScreen({super.key});

  @override
  State<AddObjectiveScreen> createState() => _AddObjectiveScreenState();
}

class _AddObjectiveScreenState extends State<AddObjectiveScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/AddObjectiveScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar: appbarController.customAppBarController(context, "Add Objective"),
        body: object.value.isNotEmpty
            ? Stack(
              children: [
                Container(
                  height: ScreenSize.horizontalBlockSize! * 160,
                  // color: Colors.red,
                  child: ListView(
                      children: object.value.map((controller) {
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(ScreenSize.fSize_15()),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Objective ${object.value.indexOf(controller) + 1}",
                                    style: appFontStyleData.objectiveStyle(
                                        context, context),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_15()),
                                  Container(
                                    height: ScreenSize.fSize_120(),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(ScreenSize.fSize_8()),
                                      border: Border.all(
                                        width: 3,
                                        color: appColorController.boxColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        controller: controller,
                                        readOnly: true,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  // appAllTextFieldController.workExperienceTextField(
                                  //   context,
                                  //   controller1,
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                ),
                resumeBannerADController.showBanner("/AddObjectiveScreen"),
              ],
            )
            : Center(
                child: Text(
                  "Create One Now!",
                  style: appFontStyleData.workTextStyle,
                ),
              ),
      ),
    );
  }
}
