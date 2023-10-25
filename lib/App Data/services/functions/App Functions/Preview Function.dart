// ignore_for_file: invalid_use_of_protected_member

import 'dart:developer';

import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Education%20Screen/Add%20Education%20Details%20Screen.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Hobbies%20Screen/Add%20Hobbies%20Screen.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Reference%20Screen/Add%20Reference%20Screen.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Skills%20Screen/Add%20Skills%20Screen.dart';

// import 'package:resume_builder_app/App%20Data/pages/Create%20Resume/Sub%20Screen/Personal%20information%20Screen.dart';
// import 'package:resume_builder_app/App%20Data/pages/Create%20Resume/Sub%20Screen/Work%20Experience%20Screen/Add%20Work%20Experience%20Screen.dart';
import 'dart:math' as math;
import '../../../pages/Create Resume/Sub Screen/Objective Screen/Object Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Personal information Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Work Experience Screen/Add Work Experience Screen.dart';
import '../../../utils/Resume Slider.dart';
import '../../../utils/color.dart';
import '../../../widgets/features/TextController.dart';
import '../../../widgets/global/MediaQuery/size.dart';

PreViewAppController preViewAppController = PreViewAppController();

class PreViewAppController extends GetxController {
  ///// Template 1
  templatePreview() {
    log("objecttttttt $workList");
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(top: ScreenSize.fSize_40()),
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 30,
            width: double.maxFinite,
            color: const Color(0xFFF0F0F0),
            child: Stack(
              children: [
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50,
                  top: ScreenSize.horizontalBlockSize! * 10,
                  child: Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_50(),
                    width: ScreenSize.horizontalBlockSize! * 40,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_10(),
                      ),
                      controller: PERSONAL.isNotEmpty
                          ? PERSONAL[0][1]
                          : textController.professionController.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "GRAPHIC & WEB DESIGNER ",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: ScreenSize.fSize_10(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: ScreenSize.fSize_10(),
                    left: ScreenSize.horizontalBlockSize! * 50,
                  ),
                  child: Column(
                    children: [
                      Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_50(),
                        width: ScreenSize.horizontalBlockSize! * 43,
                        child: TextField(
                          controller: PERSONAL.isNotEmpty
                              ? PERSONAL[0][0]
                              : textController.nameController.value,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenSize.fSize_18(),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "BRAIN R. BAXTER",
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: ScreenSize.fSize_18(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 45.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 40,
            child: Row(
              children: [
                const Icon(
                  Icons.supervised_user_circle_outlined,
                  // color: const Color(0xFFF2AB01),
                  color: Colors.black,
                ),
                Text(
                  "ABOUT ME",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_17(),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 81,
          child: Row(
            children: [
              const Icon(
                Icons.supervised_user_circle_outlined,
                // color: const Color(0xFFF2AB01),
                color: Colors.black,
              ),
              Container(
                width: ScreenSize.horizontalBlockSize! * 35,
                color: Colors.transparent,
                child: Text(
                  "JOB EXPERIENCE",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_14(),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Skills
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 171,
          child: Row(
            children: [
              const Icon(
                Icons.supervised_user_circle_outlined,
                // color: const Color(0xFFF2AB01),
                color: Colors.black,
              ),
              Container(
                width: ScreenSize.horizontalBlockSize! * 35,
                color: Colors.transparent,
                child: Text(
                  "SKILLS",
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_14(),
                  ),
                ),
              ),
            ],
          ),
        ),
        ////// 1
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 70,
          top: ScreenSize.horizontalBlockSize! * 180,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 24,
            height: ScreenSize.horizontalBlockSize! * 1.5,
            child: Resume1CustomSlider(
              value: skillRateValue.value.isEmpty
                  ? 40.0
                  : skillRateValue.value[0][0],
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
              width: ScreenSize.horizontalBlockSize! * 24,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 174.5,
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 18,
            // color: Colors.red,
            child: TextField(
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                fontWeight: FontWeight.bold,
              ),
              controller: skill.value[0],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Skill Name",
                hintStyle: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ////// 2
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 70,
          top: ScreenSize.horizontalBlockSize! * 186,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 24,
            height: ScreenSize.horizontalBlockSize! * 1.5,
            child: Resume1CustomSlider(
              value: skillRateValue.value.isEmpty
                  ? 40.0
                  : skillRateValue.value[0][1],
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
              width: ScreenSize.horizontalBlockSize! * 24,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 181,
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 18,
            // color: Colors.red,
            child: TextField(
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                fontWeight: FontWeight.bold,
              ),
              controller: skill.value[1],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Skill Name",
                hintStyle: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ////// 3
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 70,
          top: ScreenSize.horizontalBlockSize! * 193,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 24,
            height: ScreenSize.horizontalBlockSize! * 1.5,
            child: Resume1CustomSlider(
              value: skillRateValue.value.isEmpty
                  ? 50.0
                  : skillRateValue.value[0][2],
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
              width: ScreenSize.horizontalBlockSize! * 24,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 187.5,
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 18,
            // color: Colors.red,
            child: TextField(
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                fontWeight: FontWeight.bold,
              ),
              controller: skill.value[2],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Skill Name",
                hintStyle: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ////// 4
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 70,
          top: ScreenSize.horizontalBlockSize! * 199,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 24,
            height: ScreenSize.horizontalBlockSize! * 1.5,
            child: Resume1CustomSlider(
              value: skillRateValue.value.isEmpty
                  ? 50.0
                  : skillRateValue.value[0][3],
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
              width: ScreenSize.horizontalBlockSize! * 24,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 194,
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 18,
            // color: Colors.red,
            child: TextField(
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                fontWeight: FontWeight.bold,
              ),
              controller: skill.value[3],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Skill Name",
                hintStyle: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ////// 5
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 70,
          top: ScreenSize.horizontalBlockSize! * 205,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 24,
            height: ScreenSize.horizontalBlockSize! * 1.5,
            child: Resume1CustomSlider(
              value: skillRateValue.value.isEmpty
                  ? 50.0
                  : skillRateValue.value[0][4],
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
              width: ScreenSize.horizontalBlockSize! * 24,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 199.5,
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 18,
            // color: Colors.red,
            child: TextField(
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                fontWeight: FontWeight.bold,
              ),
              controller: skill.value[4],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Skill Name",
                hintStyle: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        ////////////////////////////////
        //// Work 1
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 90,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 27,
                color: Colors.transparent,
                child: TextField(
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                  controller: workList.value.isEmpty
                      ? textController.jobExperience1.value
                      : workList.value[0][1],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "SENIOR WEB DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_8()),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  color: Colors.transparent,
                  child: TextField(
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                    controller: workList.value.isEmpty
                        ? textController.jobExperience2.value
                        : workList.value[0][5] == "true"
                            ? textController.workPresentController1.value
                            : workList.value[0][2],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2020-Present",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ///// work 2
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 114.5,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 27,
                color: Colors.transparent,
                child: TextField(
                  controller: workList.value.length < 2
                      ? textController.jobExperience11.value
                      : workList.value[1][0],
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "GRAPHIC DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_20()),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 2
                        ? textController.workPresentController2.value
                        : workList.value[1][5] == "true"
                            ? textController.presentController.value
                            : workList.value[1][2],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2015-2020",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //////////
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 137.5,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 27,
                color: Colors.transparent,
                child: TextField(
                  controller: workList.value.length < 3
                      ? textController.jobExperience21.value
                      : workList.value[2][0],
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "MARKETING MANAGER",
                    hintStyle: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_20()),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 3
                        ? textController.jobExperience2.value
                        : workList.value[2][5] == "true"
                            ? textController.workPresentController3.value
                            : workList.value[2][2],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2013-2015",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ///// 1
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 94,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.isEmpty
                  ? textController.jobExperience23.value
                  : workList.value[0][0],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_8(),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Creative Angery / Chicago",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 118,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.length < 2
                  ? textController.jobExperience13.value
                  : workList.value[1][0],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_8(),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Creative Market / Chicago",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 141.5,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.length < 3
                  ? textController.jobExperience13.value
                  : workList.value[2][0],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_8(),
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Manufacturing Agency / NJ",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 100,
          child: Container(
            height: ScreenSize.fSize_50(),
            width: ScreenSize.horizontalBlockSize! * 45,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.isEmpty
                  ? textController.jobExperience24.value
                  : workList.value[0][4],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_12(),
              ),
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_12(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 125,
          child: Container(
            height: ScreenSize.fSize_50(),
            width: ScreenSize.horizontalBlockSize! * 45,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.length < 2
                  ? textController.jobExperience24.value
                  : workList.value[1][4],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_12(),
              ),
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_12(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 150,
          child: Container(
            height: ScreenSize.fSize_50(),
            width: ScreenSize.horizontalBlockSize! * 45,
            color: Colors.transparent,
            child: TextField(
              controller: workList.value.length < 3
                  ? textController.jobExperience24.value
                  : workList.value[2][4],
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.fSize_12(),
              ),
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_12(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 52,
          child: Container(
            color: Colors.transparent,
            // height: ScreenSize.fSize_34(),
            width: ScreenSize.horizontalBlockSize! * 43,
            child: TextField(
              controller: object.value[0],
              textInputAction: TextInputAction.done,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.fSize_10(),
              ),
              maxLines: 5,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. This is because paragraphs show a reader where the subdivisions of an essay begin and end, and thus help the reader see the organization of the essay and grasp its main points.",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.fSize_10(),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: ScreenSize.horizontalBlockSize! * 210,
          width: ScreenSize.horizontalBlockSize! * 44,
          color: const Color(0xFF333333),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 46.5,
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 210,
            color: const Color(0xFF333333),
            width: ScreenSize.fSize_2(),
          ),
        ),
        Positioned(
          top: ScreenSize.fSize_50(),
          left: ScreenSize.horizontalBlockSize! * 45.7,
          child: Container(
            height: ScreenSize.fSize_70(),
            width: ScreenSize.fSize_8(),
            decoration: BoxDecoration(
              color: const Color(0xFFF2AB01),
              borderRadius: BorderRadius.circular(
                ScreenSize.fSize_100(),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90,
          left: ScreenSize.horizontalBlockSize! * 45.6,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
              color: Color(0xFFF2AB01),
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(
              //   ScreenSize.fSize_100(),
              // ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 170,
          left: ScreenSize.horizontalBlockSize! * 45.6,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.fSize_8(),
            decoration: BoxDecoration(
              color: const Color(0xFFF2AB01),
              borderRadius: BorderRadius.circular(
                ScreenSize.fSize_100(),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 45,
          left: ScreenSize.horizontalBlockSize! * 45.7,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.fSize_8(),
            decoration: BoxDecoration(
              color: const Color(0xFFF2AB01),
              borderRadius: BorderRadius.circular(
                ScreenSize.fSize_100(),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 80,
          left: ScreenSize.horizontalBlockSize! * 45.7,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.fSize_8(),
            decoration: BoxDecoration(
              color: const Color(0xFFF2AB01),
              borderRadius: BorderRadius.circular(
                ScreenSize.fSize_100(),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 117,
          left: ScreenSize.horizontalBlockSize! * 45.5,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: BoxDecoration(
              // color: Colors.red,
              color: const Color(0xFFF2AB01),
              borderRadius: BorderRadius.circular(
                ScreenSize.fSize_100(),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 140,
          left: ScreenSize.horizontalBlockSize! * 45.5,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                // color: Colors.red,
                color: Color(0xFFF2AB01),
                shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_20(),
          child: Container(
            width: ScreenSize.fSize_2(),
            height: ScreenSize.horizontalBlockSize! * 210,
            color: const Color(0xFF696969),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.fSize_120(),
          child: Container(
            height: ScreenSize.fSize_34(),
            width: ScreenSize.fSize_11(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 50,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 70,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 90,
          child: Container(
            height: ScreenSize.fSize_34(),
            width: ScreenSize.fSize_11(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 105,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 128,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 160,
          child: Container(
            height: ScreenSize.fSize_34(),
            width: ScreenSize.fSize_11(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 174,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 192,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                color: Color(0xFFF2AB01), shape: BoxShape.circle),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 60,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: const BoxDecoration(
                // color: Colors.red,
                color: Color(0xFFF2AB01),
                shape: BoxShape.circle
                // borderRadius: BorderRadius.circular(ScreenSize.fSize_100()),
                ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 35,
          child: Row(
            children: [
              Image.asset(
                "assets/image/Template Image/Resume 1 Images/Person.png",
                scale: 1.2,
              ),
              SizedBox(width: ScreenSize.fSize_6()),
              Text(
                "CONTACT ME",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_15(),
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 48.5,
          child: Image.asset(
            "assets/image/Template Image/Resume 1 Images/Phone.png",
            scale: 25.0,
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 15,
          top: ScreenSize.horizontalBlockSize! * 42.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              controller: PERSONAL.value.isEmpty
                  ? textController.phoneController.value
                  : PERSONAL.value[0][4],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "+1-718-310-5588",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 15,
          top: ScreenSize.horizontalBlockSize! * 47,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              controller: textController.phoneController2.value,
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "+1-313-381-8167",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        //// web
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 59,
          child: Image.asset(
            "assets/image/Template Image/Resume 1 Images/www.png",
            scale: 25.0,
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 15,
          top: ScreenSize.horizontalBlockSize! * 53,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              controller: textController.webSiteController.value,
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "www.yourwebsite.com",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 15,
          top: ScreenSize.horizontalBlockSize! * 56.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              controller: PERSONAL.value.isEmpty
                  ? textController.emailController.value
                  : PERSONAL.value[0][2],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "yourinfo@email.com",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.fSize_60(),
          child: const Divider(
            color: Colors.redAccent,
            height: 5,
            thickness: 3,
            indent: 25,
            endIndent: 25,
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 68.5,
          child: Image.asset(
            "assets/image/Template Image/Resume 1 Images/location.png",
            scale: 26.0,
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 15,
          top: ScreenSize.horizontalBlockSize! * 64.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_50(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              controller: PERSONAL.value.isEmpty
                  ? textController.addressController.value
                  : PERSONAL.value[0][5],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              maxLines: 2,
              keyboardType: TextInputType.name,
              // textAlign: TextAlign.start,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "769 Prudence Street Lincoln Park, MI 48146",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 92,
          child: Row(
            children: [
              Image.asset(
                "assets/image/Template Image/Resume 1 Images/Person.png",
                scale: 1.2,
              ),
              SizedBox(width: ScreenSize.fSize_6()),
              Text(
                "REFERENCES",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_15(),
                ),
              ),
            ],
          ),
        ),
        //// reference 1
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 100,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_120(),
            child: TextField(
              controller: reference.value.isEmpty
                  ? textController.referenceName.value
                  : reference.value[0][0],
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_11(),
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "DARWIN B. MAGANA",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 106,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.isEmpty
                  ? textController.referenceAddress.value
                  : reference.value[0][1],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2813 Shobe Lane Mancos, Co.",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 110,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.isEmpty
                  ? textController.referenceNumber.value
                  : reference.value[0][2],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tel:+1-908-987-5103",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 114,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.isEmpty
                  ? textController.referenceEmail.value
                  : reference.value[0][3],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email:www.yourwebsite.com",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        //// reference 2
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 123.3,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_120(),
            child: TextField(
              controller: reference.value.length < 2
                  ? textController.referenceName2.value
                  : reference.value[1][0],
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_11(),
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ROBERT J. BELVIN",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 129.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.length < 2
                  ? textController.referenceAddress2.value
                  : reference.value[1][1],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2119 Fairfax Drive Newark, NJ.",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 134,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.length < 2
                  ? textController.referenceNumber2.value
                  : reference.value[1][2],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tel:+1-908-987-5103",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 138.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              controller: reference.value.length < 2
                  ? textController.referenceEmail2.value
                  : reference.value[1][3],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_11()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email:www.youwebsite.com",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_11()),
              ),
            ),
          ),
        ),
        //// Education
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 162,
          child: Row(
            children: [
              Image.asset(
                "assets/image/Template Image/Resume 1 Images/Person.png",
                scale: 1.2,
              ),
              SizedBox(width: ScreenSize.fSize_6()),
              Text(
                "EDUCATION",
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_15(),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 169,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 33,
            child: TextField(
              controller: education.value.isEmpty
                  ? textController.schoolNameController.value
                  : education.value[0][0],
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_11(),
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "STANFORD UNIVERSITY",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 173,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_120(),
            child: TextField(
              controller: education.value.isEmpty
                  ? textController.degreeController.value
                  : education.value[0][1],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_10()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "MASTER DEGREE GRADUATE",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_10()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 177.5,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_10()),
              controller: education.value.isEmpty
                  ? textController.startDateController.value
                  : education.value[0][2],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_10()),
              ),
            ),
          ),
        ),
        //// Education 2
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 187,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 33,
            child: TextField(
              controller: education.value.length < 2
                  ? textController.schoolNameController2.value
                  : education.value[1][0],
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_11(),
                fontWeight: FontWeight.bold,
              ),
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "UNIVERSITY OF CHICAGO",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 191,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_120(),
            child: TextField(
              controller: education.value.length < 2
                  ? textController.degreeController2.value
                  : education.value[1][1],
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_10()),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "BACHELOR DEGREE GRADUATE",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_10()),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 195,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              style: GoogleFonts.openSans(
                  color: Colors.white, fontSize: ScreenSize.fSize_10()),
              controller: education.value.length < 2
                  ? textController.startDateController.value
                  : education.value[1][2],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2007-2010",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white, fontSize: ScreenSize.fSize_10()),
              ),
            ),
          ),
        ),
        ////////
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 82,
          child: FDottedLine(
            color: Colors.white,
            width: ScreenSize.horizontalBlockSize! * 35,
            strokeWidth: 1.0,
            dottedLength: 5.0,
            space: 2.0,
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 153,
          child: FDottedLine(
            color: Colors.white,
            width: ScreenSize.horizontalBlockSize! * 35,
            strokeWidth: 1.0,
            dottedLength: 5.0,
            space: 2.0,
          ),
        ),
        Container(
          height: ScreenSize.horizontalBlockSize! * 35,
          width: ScreenSize.horizontalBlockSize! * 35,
          // color: Colors.red,
          child: Image.asset(
            "assets/image/Template Image/Resume 1 Images/Vector 7.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 7.5,
          top: ScreenSize.horizontalBlockSize! * 2,
          // top: ScreenSize.horizontalBlockSize! * 45.5,
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 26,
            // color: Colors.red,
            child: Image.asset(
              "assets/image/Template Image/Resume 1 Images/Vector 9.png",
              // color: Colors.green,
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 9,
          top: ScreenSize.horizontalBlockSize! * 3.6,
          // top: ScreenSize.horizontalBlockSize! * 45.5,
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 23,
            // color: Colors.red,
            child: Image.asset(
              "assets/image/Template Image/Resume 1 Images/Vector 9.png",
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

///// Template 4
  template4Preview() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 210,
            width: ScreenSize.horizontalBlockSize! * 40,
            color: const Color(0xFF29292B),
            child: Stack(
              children: [
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 40,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.fSize_120(),
                    decoration: BoxDecoration(
                        // color: const Color(0xFFFF9C01),
                        border: Border.all(color: const Color(0xFFFF9C01))),
                    child: Center(
                      child: Text(
                        "CONTACT ME",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                // Address
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 55,
                  left: ScreenSize.horizontalBlockSize! * 4,
                  child: Icon(
                    Icons.location_on,
                    color: const Color(0xFFFF9C01),
                    size: ScreenSize.fSize_18(),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 54,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Text(
                    "ADDRESS",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 55,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_50(),
                    width: ScreenSize.horizontalBlockSize! * 24,
                    // color: Colors.red,
                    child: TextField(
                      controller: PERSONAL.value.isEmpty
                          ? textController.addressController.value
                          : PERSONAL.value[0][5],
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      maxLines: 2,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "123, Stree Oclaho, New York City, USA",
                        hintMaxLines: 2,
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                // WEB
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 69,
                  left: ScreenSize.horizontalBlockSize! * 4,
                  child: Icon(
                    Icons.language,
                    color: const Color(0xFFFF9C01),
                    size: ScreenSize.fSize_18(),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 68.4,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Text(
                    "WEB",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 67.5,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 24,
                    // color: Colors.red,
                    child: TextField(
                      controller: textController.webSiteController.value,
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "contactme@gmail.com",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 70,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 24,
                    // color: Colors.red,
                    child: TextField(
                      controller: PERSONAL.value.isEmpty
                          ? textController.emailController.value
                          : PERSONAL.value[0][2],
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "www.contactme.com",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                // Phone
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 83,
                  left: ScreenSize.horizontalBlockSize! * 4,
                  child: Icon(
                    Icons.phone,
                    color: const Color(0xFFFF9C01),
                    size: ScreenSize.fSize_18(),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 82.4,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Text(
                    "PHONE",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 82,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 24,
                    // color: Colors.red,
                    child: TextField(
                      controller: PERSONAL.value.isEmpty
                          ? textController.phoneController.value
                          : PERSONAL.value[0][4],
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0123 0000 0000 1000",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 85,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 24,
                    // color: Colors.red,
                    child: TextField(
                      controller: textController.phoneController2.value,
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "0123 0000 8000 0000",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                // Pro Skill
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 100,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.fSize_120(),
                    decoration: BoxDecoration(
                        // color: const Color(0xFFFF9C01),
                        border: Border.all(color: const Color(0xFFFF9C01))),
                    child: Center(
                      child: Text(
                        "PRO SKILLS",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                //// Sliders 1
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 115,
                  left: ScreenSize.horizontalBlockSize! * 10,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 20,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: skill.value[0],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Skill Name",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 125,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    height: ScreenSize.horizontalBlockSize! * 3,
                    // color: Colors.red,
                    child: Resume4CustomSlider(
                      value: skillRateValue.value.isEmpty
                          ? 40.0
                          : skillRateValue.value[0][0],
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                      width: ScreenSize.horizontalBlockSize! * 30,
                      color: '',
                    ),
                  ),
                ),
                //// Sliders 2
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 130,
                  left: ScreenSize.horizontalBlockSize! * 10,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 20,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: skill.value[1],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Skill Name",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 139,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    height: ScreenSize.horizontalBlockSize! * 3,
                    // color: Colors.red,
                    child: Resume4CustomSlider(
                      value: skillRateValue.value.isEmpty
                          ? 40.0
                          : skillRateValue.value[0][1],
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                      width: ScreenSize.horizontalBlockSize! * 30,
                      color: '',
                    ),
                  ),
                ),
                //// Sliders 3
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 144,
                  left: ScreenSize.horizontalBlockSize! * 11,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 20,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: skill.value[2],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Skill Name",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 153,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    height: ScreenSize.horizontalBlockSize! * 3,
                    // color: Colors.red,
                    child: Resume4CustomSlider(
                      value: skillRateValue.value.isEmpty
                          ? 40.0
                          : skillRateValue.value[0][2],
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                      width: ScreenSize.horizontalBlockSize! * 30,
                      color: '',
                    ),
                  ),
                ),
                //// Sliders 4
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 159,
                  left: ScreenSize.horizontalBlockSize! * 9,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 20,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: skill.value[3],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Skill Name",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 167,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    height: ScreenSize.horizontalBlockSize! * 3,
                    // color: Colors.red,
                    child: Resume4CustomSlider(
                      value: skillRateValue.value.isEmpty
                          ? 40.0
                          : skillRateValue.value[0][3],
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                      width: ScreenSize.horizontalBlockSize! * 30,
                      color: '',
                    ),
                  ),
                ),
                //// Sliders 5
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 174,
                  left: ScreenSize.horizontalBlockSize! * 8,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 20,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      controller: skill.value[3],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Skill Name",
                        hintStyle: GoogleFonts.openSans(
                          fontSize: ScreenSize.horizontalBlockSize! * 2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 183,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    height: ScreenSize.horizontalBlockSize! * 3,
                    // color: Colors.red,
                    child: Resume4CustomSlider(
                      value: skillRateValue.value.isEmpty
                          ? 40.0
                          : skillRateValue.value[0][3],
                      min: 0.0,
                      max: 100.0,
                      onChanged: (value) {},
                      width: ScreenSize.horizontalBlockSize! * 30,
                      color: '',
                    ),
                  ),
                ),
                // Social
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 198,
                  left: ScreenSize.horizontalBlockSize! * 5,
                  child: Container(
                    height: ScreenSize.fSize_3(),
                    width: ScreenSize.fSize_110(),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 203,
                  left: ScreenSize.horizontalBlockSize! * 7,
                  child: Row(
                    children: [
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 6,
                        width: ScreenSize.horizontalBlockSize! * 6,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/image/Template Image/Resume 4 Image/instagram.png",
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.fSize_15()),
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 6,
                        width: ScreenSize.horizontalBlockSize! * 6,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/image/Template Image/Resume 4 Image/twitter.png",
                          ),
                        ),
                      ),
                      SizedBox(width: ScreenSize.fSize_15()),
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 6,
                        width: ScreenSize.horizontalBlockSize! * 6,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset(
                            "assets/image/Template Image/Resume 4 Image/whatsapp.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Name
        Positioned(
          top: ScreenSize.fSize_40(),
          left: ScreenSize.fSize_80(),
          child: Container(
            height: ScreenSize.fSize_90(),
            width: ScreenSize.horizontalBlockSize! * 80,
            color: const Color(0xFFFF9C01),
            child: Padding(
              padding:
                  EdgeInsets.only(left: ScreenSize.horizontalBlockSize! * 27),
              child: Container(
                // color: Colors.red,
                height: ScreenSize.fSize_45(),
                width: ScreenSize.horizontalBlockSize! * 38,
                child: TextField(
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_18(),
                    fontWeight: FontWeight.w800,
                  ),
                  controller: PERSONAL.value.isEmpty
                      ? textController.nameController.value
                      : PERSONAL.value[0][0],
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "KELLY WHITE",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_18(),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 17,
          left: ScreenSize.horizontalBlockSize! * 48,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_45(),
            width: ScreenSize.horizontalBlockSize! * 38,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_12(),
                fontWeight: FontWeight.w500,
              ),
              controller: PERSONAL.value.isEmpty
                  ? textController.nameController.value
                  : PERSONAL.value[0][1],
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ART DIRECTOR",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_12(),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        // Image
        Positioned(
          top: ScreenSize.fSize_15(),
          left: ScreenSize.fSize_15(),
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 40,
            width: ScreenSize.horizontalBlockSize! * 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF29292B),
            ),
            child: Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_10()),
              child: textController.profileImage != null
                  ? Container(
                      height: ScreenSize.fSize_140(),
                      width: ScreenSize.fSize_140(),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.red,
                        image: DecorationImage(
                            image: FileImage(textController.profileImage),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                    )
                  : Container(
                      height: ScreenSize.fSize_140(),
                      width: ScreenSize.fSize_140(),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // color: Colors.red,
                        image: const DecorationImage(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQloftq61cFe4VKJqXGU-4n7MtX18ajx3drukbn5UtCHAAvTvkguzFHal9JeUliQzW3u4w&usqp=CAU")),
                        border: Border.all(color: Colors.white, width: 5),
                      ),
                    ),
            ),
          ),
        ),
        // Education
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 50,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 53,
            color: const Color(0xFFFF9C01),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_40()),
                child: Text(
                  "EDUCATION",
                  style: GoogleFonts.openSans(
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.fSize_15()),
                ),
              ),
            ),
          ),
        ),
        //// Box 2
        // Education 1
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 65,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 59.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.isEmpty
                  ? textController.resume4StartDate1.value
                  : education.value[0][5] == "true"
                      ? textController.resume4Present1.value
                      : education.value[0][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 63,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.isEmpty
                  ? textController.resume4SchoolName1.value
                  : education.value[0][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 59.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.isEmpty
                  ? textController.resume4DegreeName1.value
                  : education.value[0][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 63,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.isEmpty
                  ? textController.resume4Additional1.value
                  : education.value[0][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Education 2
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 79,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 73,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 2
                  ? textController.resume4StartDate2.value
                  : education.value[1][5] == "true"
                      ? textController.resume4Present2.value
                      : education.value[1][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 76.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 2
                  ? textController.resume4SchoolName2.value
                  : education.value[1][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 73,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 2
                  ? textController.resume4DegreeName2.value
                  : education.value[1][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 76.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 2
                  ? textController.resume4Additional2.value
                  : education.value[1][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Education 3
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 92,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 86.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 3
                  ? textController.resume4StartDate3.value
                  : education.value[2][5] == "true"
                      ? textController.resume4Present3.value
                      : education.value[2][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 3
                  ? textController.resume4SchoolName3.value
                  : education.value[2][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 86.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 3
                  ? textController.resume4DegreeName3.value
                  : education.value[2][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 3
                  ? textController.resume4Additional3.value
                  : education.value[2][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Education 4
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 107,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 101,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 4
                  ? textController.resume4StartDate4.value
                  : education.value[3][5] == "true"
                      ? textController.resume4Present4.value
                      : education.value[3][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 104.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 4
                  ? textController.resume4SchoolName4.value
                  : education.value[3][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 101,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 4
                  ? textController.resume4DegreeName4.value
                  : education.value[3][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 104.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: education.value.length < 4
                  ? textController.resume4Additional4.value
                  : education.value[3][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Experience
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 120,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 53,
            color: const Color(0xFFFF9C01),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_40()),
                child: Text(
                  "EXPERIENCE",
                  style: GoogleFonts.openSans(
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.fSize_15()),
                ),
              ),
            ),
          ),
        ),
        // Experience 1
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 135,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 129.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.isEmpty
                  ? textController.resume4ExDate1.value
                  : workList.value[0][5] == "true"
                      ? textController.resume4ExPresent1.value
                      : workList.value[0][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 132.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.isEmpty
                  ? textController.resume4ExPosition1.value
                  : workList.value[0][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 129.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.isEmpty
                  ? textController.resume4ExName1.value
                  : workList.value[0][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 134,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_70(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              maxLines: 4,
              controller: workList.value.isEmpty
                  ? textController.resume4ExDescription1.value
                  : workList.value[0][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Experience 2
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 153,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 147.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 2
                  ? textController.resume4ExDate2.value
                  : workList.value[1][5] == "true"
                      ? textController.resume4ExPresent2.value
                      : workList.value[1][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 150.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 2
                  ? textController.resume4ExPosition2.value
                  : workList.value[1][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 147.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 2
                  ? textController.resume4ExName2.value
                  : workList.value[1][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 152.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_70(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              maxLines: 4,
              controller: workList.value.length < 2
                  ? textController.resume4ExDescription2.value
                  : workList.value[1][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Experience 3
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 172,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 166.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 3
                  ? textController.resume4ExDate3.value
                  : workList.value[2][5] == "true"
                      ? textController.resume4ExPresent3.value
                      : workList.value[2][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 169.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 3
                  ? textController.resume4ExPosition3.value
                  : workList.value[2][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 166.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 3
                  ? textController.resume4ExName3.value
                  : workList.value[2][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 171,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_70(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              maxLines: 4,
              controller: workList.value.length < 3
                  ? textController.resume4ExDescription3.value
                  : workList.value[2][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        // Ex. 2020-2021
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 192,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 186.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 4
                  ? textController.resume4ExDate4.value
                  : workList.value[3][5] == "true"
                      ? textController.resume4ExPresent4.value
                      : workList.value[3][2],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2011-2013",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 189.5,
          left: ScreenSize.fSize_28(),
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 4
                  ? textController.resume4ExPosition4.value
                  : workList.value[3][0],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 186.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: workList.value.length < 4
                  ? textController.resume4ExName4.value
                  : workList.value[3][1],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 191.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_70(),
            width: ScreenSize.horizontalBlockSize! * 17,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              maxLines: 4,
              controller: workList.value.length < 4
                  ? textController.resume4ExDescription4.value
                  : workList.value[3][4],
              // controller: textController.yearController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "LOREM IPSUM",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

///// Template 5
  template5Preview() {
    print("PERSONAL $PERSONAL");
    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      child: Stack(
        children: [
          Positioned(
            right: ScreenSize.horizontalBlockSize! * 65,
            top: -80,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 50,
              width: ScreenSize.horizontalBlockSize! * 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEFE0CB),
              ),
            ),
          ),
          Positioned(
            right: -80,
            bottom: -60,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 50,
              width: ScreenSize.horizontalBlockSize! * 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEFE0CB),
              ),
            ),
          ),

          Positioned(
            left: ScreenSize.horizontalBlockSize! * 65,
            top: -70,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 45,
              width: ScreenSize.horizontalBlockSize! * 45,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: const Color(0xFF79838C),
                  )),
            ),
          ),
          Positioned(
            right: 78,
            bottom: -2,
            child: Container(
              height: ScreenSize.fSize_45(),
              width: ScreenSize.fSize_45(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF79838C),
              ),
            ),
          ),
          Positioned(
            right: 25,
            bottom: -85,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 30,
              width: ScreenSize.horizontalBlockSize! * 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: const Color(0xFF79838C),
                  )),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 68,
            top: ScreenSize.fSize_50(),
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.fSize_50(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFEFE0CB),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 91,
            top: ScreenSize.fSize_55(),
            child: Container(
              height: ScreenSize.fSize_110(),
              width: ScreenSize.fSize_40(),
              decoration: const BoxDecoration(
                color: Color(0xFF79838C),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 82,
            top: -40,
            child: Container(
              height: ScreenSize.fSize_60(),
              width: ScreenSize.fSize_8(),
              decoration: const BoxDecoration(
                color: Color(0xFFC79E68),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 86,
            top: -40,
            child: Container(
              height: ScreenSize.fSize_60(),
              width: ScreenSize.fSize_8(),
              decoration: const BoxDecoration(
                color: Color(0xFFC79E68),
              ),
            ),
          ),
          // Name
          Positioned(
            top: ScreenSize.fSize_18(),
            left: ScreenSize.horizontalBlockSize! * 42,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_90(),
              width: ScreenSize.horizontalBlockSize! * 20,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_20(),
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Karrin",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_20(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 19,
            left: ScreenSize.horizontalBlockSize! * 42,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 22,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Graphic Designer",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 3,
                  ),
                ),
              ),
            ),
          ),
          // Image
          Positioned(
            left: ScreenSize.fSize_18(),
            top: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_120(),
              width: ScreenSize.fSize_120(),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: textController.profileImage != null
                    ? Container(
                        height: ScreenSize.fSize_140(),
                        width: ScreenSize.fSize_140(),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.red,
                          image: DecorationImage(
                              image: FileImage(textController.profileImage),
                              fit: BoxFit.cover),
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : Container(
                        height: ScreenSize.fSize_140(),
                        width: ScreenSize.fSize_140(),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          // color: Colors.red,
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQloftq61cFe4VKJqXGU-4n7MtX18ajx3drukbn5UtCHAAvTvkguzFHal9JeUliQzW3u4w&usqp=CAU")),
                          border: Border.all(color: Colors.white, width: 5),
                        ),
                      ),
              ),
            ),
          ),
          // Mobile Number
          Positioned(
            left: ScreenSize.fSize_15(),
            top: ScreenSize.horizontalBlockSize! * 40,
            child: Icon(
              Icons.phone,
              size: ScreenSize.fSize_15(),
              color: const Color(0xFF405673),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 10,
            top: ScreenSize.horizontalBlockSize! * 34,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_40(),
                width: ScreenSize.fSize_100(),
                child: TextField(
                  controller: PERSONAL.value.isEmpty
                      ? textController.phoneController.value
                      : PERSONAL.value[0][4],
                  style: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_11()),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "+012 345 678 910",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.black, fontSize: ScreenSize.fSize_11()),
                  ),
                ),
              ),
            ),
          ),
          // Address
          Positioned(
            left: ScreenSize.fSize_15(),
            top: ScreenSize.horizontalBlockSize! * 45,
            child: Icon(
              Icons.location_on,
              size: ScreenSize.fSize_15(),
              color: const Color(0xFF405673),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 10,
            top: ScreenSize.horizontalBlockSize! * 40,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_100(),
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.addressController.value
                    : PERSONAL.value[0][5],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your Address",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          // Email
          Positioned(
            left: ScreenSize.fSize_15(),
            top: ScreenSize.horizontalBlockSize! * 50,
            child: Icon(
              Icons.mail,
              size: ScreenSize.fSize_15(),
              color: const Color(0xFF405673),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 10,
            top: ScreenSize.horizontalBlockSize! * 45,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_100(),
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.emailController.value
                    : PERSONAL.value[0][2],
                style: GoogleFonts.openSans(
                    color: Colors.black, fontSize: ScreenSize.fSize_11()),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Youremail@email.com",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_11()),
                ),
              ),
            ),
          ),
          // About Me
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 33,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "ABOUT ME",
                style: GoogleFonts.openSans(
                    color: const Color(0xFFC79E68),
                    fontSize: ScreenSize.fSize_18()),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 43,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                // color: Colors.red,
                height: ScreenSize.fSize_70(),
                width: ScreenSize.horizontalBlockSize! * 45,
                child: TextField(
                  style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_12()),
                  controller: object.value[0],
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                    hintStyle:
                        GoogleFonts.openSans(fontSize: ScreenSize.fSize_12()),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 60,
            left: ScreenSize.fSize_8(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 210,
              width: ScreenSize.horizontalBlockSize! * 55,
              color: const Color(0xFFEFE0CB),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_10()),
                      child: Text(
                        "EXPERIENCE",
                        style: GoogleFonts.openSans(
                            color: const Color(0xFFC79E68),
                            fontWeight: FontWeight.w500,
                            fontSize: ScreenSize.fSize_18()),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_12(),
                          width: ScreenSize.fSize_12(),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3F5574)),
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "JOB POSITION",
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_12(),
                        width: ScreenSize.fSize_100(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Company Name",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_30(),
                        width: ScreenSize.fSize_170(),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    ////////////////////////////  Job Position 2
                    SizedBox(height: ScreenSize.fSize_8()),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_12(),
                          width: ScreenSize.fSize_12(),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3F5574)),
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "JOB POSITION",
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_12(),
                        width: ScreenSize.fSize_100(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Company Name",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_30(),
                        width: ScreenSize.fSize_170(),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    // Job osition 3
                    SizedBox(height: ScreenSize.fSize_8()),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_12(),
                          width: ScreenSize.fSize_12(),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3F5574)),
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "JOB POSITION",
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_12(),
                        width: ScreenSize.fSize_100(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Company Name",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_30(),
                        width: ScreenSize.fSize_170(),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    ///////////////  Job Position 4
                    SizedBox(height: ScreenSize.fSize_8()),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_12(),
                          width: ScreenSize.fSize_12(),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3F5574)),
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "JOB POSITION",
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_8()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_15(),
                        width: ScreenSize.fSize_100(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Company Name",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_30(),
                        width: ScreenSize.fSize_170(),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    ////// Job Position 5
                    SizedBox(height: ScreenSize.fSize_8()),
                    Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_12(),
                          width: ScreenSize.fSize_12(),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF3F5574)),
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "JOB POSITION",
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_12(),
                        width: ScreenSize.fSize_100(),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Company Name",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_30(),
                        width: ScreenSize.fSize_170(),
                        child: TextField(
                          maxLines: 2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: ScreenSize.fSize_11()),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_50()),
                    Padding(
                      padding: EdgeInsets.only(left: ScreenSize.fSize_15()),
                      child: Row(
                        children: [
                          Container(
                            height: ScreenSize.fSize_60(),
                            width: ScreenSize.fSize_10(),
                            decoration: const BoxDecoration(
                              color: Color(0xFFC79E68),
                            ),
                          ),
                          SizedBox(width: ScreenSize.fSize_6()),
                          Container(
                            height: ScreenSize.fSize_60(),
                            width: ScreenSize.fSize_10(),
                            decoration: const BoxDecoration(
                              color: Color(0xFFC79E68),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Skills
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 65,
            left: ScreenSize.horizontalBlockSize! * 60,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "---------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_6()),
                  Text(
                    "SKILLS",
                    style: GoogleFonts.openSans(
                      color: const Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_6()),
                  const Text(
                    "---------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76,
            left: ScreenSize.horizontalBlockSize! * 59,
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      CircularPercentIndicator(
                        backgroundColor: const Color(0xFFC7986C),
                        radius: 15.0,
                        lineWidth: 3.0,
                        percent: 0.79,
                        center: Text(
                          "${((0.79) * 100).toStringAsFixed(0)}%",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                        progressColor: const Color(0xFF405673),
                      ),
                      SizedBox(height: ScreenSize.fSize_3()),
                      Container(
                        // color: Colors.red,
                        width: ScreenSize.horizontalBlockSize! * 11,
                        child: Text(
                          "PHOTOSHOP",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  Column(
                    children: [
                      CircularPercentIndicator(
                        backgroundColor: const Color(0xFFC7986C),
                        radius: 15.0,
                        lineWidth: 3.0,
                        percent: 0.79,
                        center: Text(
                          "${((0.79) * 100).toStringAsFixed(0)}%",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                        progressColor: const Color(0xFF405673),
                      ),
                      SizedBox(height: ScreenSize.fSize_3()),
                      Container(
                        // color: Colors.red,
                        width: ScreenSize.horizontalBlockSize! * 11,
                        child: Text(
                          "ILLUSTRATOR",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  Column(
                    children: [
                      CircularPercentIndicator(
                        backgroundColor: const Color(0xFFC7986C),
                        radius: 15.0,
                        lineWidth: 3.0,
                        percent: 0.79,
                        center: Text(
                          "${((0.79) * 100).toStringAsFixed(0)}%",
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                        progressColor: const Color(0xFF405673),
                      ),
                      SizedBox(height: ScreenSize.fSize_3()),
                      Container(
                        // color: Colors.red,
                        width: ScreenSize.horizontalBlockSize! * 11,
                        child: Text(
                          "INDESIGN",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Language
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 95,
            left: ScreenSize.horizontalBlockSize! * 60,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  Text(
                    "LANGUAGE",
                    style: GoogleFonts.openSans(
                      color: const Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  const Text(
                    "------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Language Slider 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 97,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 20,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                controller: skill.value[1],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Skill Name",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 105,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_8(),
              width: ScreenSize.horizontalBlockSize! * 30,
              color: Colors.red,
              child: Resume5CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.00
                    : skillDoubleValue.value[0],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  //   print('Slider value: $value');
                  // });
                },
                width: ScreenSize.horizontalBlockSize! * 30,
              ),
            ),
          ),
          // Language Slider 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 106.5,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 20,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                controller: skill.value[1],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Skill Name",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 115,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_8(),
              width: ScreenSize.horizontalBlockSize! * 30,
              color: Colors.red,
              child: Resume5CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.00
                    : skillDoubleValue.value[1],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  //   print('Slider value: $value');
                  // });
                },
                width: ScreenSize.horizontalBlockSize! * 30,
              ),
            ),
          ),
          // Language Slider 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 117,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 20,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                controller: skill.value[2],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Skill Name",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 125,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_8(),
              width: ScreenSize.horizontalBlockSize! * 30,
              color: Colors.red,
              child: Resume5CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  //   print('Slider value: $value');
                  // });
                },
                width: ScreenSize.horizontalBlockSize! * 30,
              ),
            ),
          ),
          // Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 132,
            left: ScreenSize.horizontalBlockSize! * 60,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  Text(
                    "EDUCATION",
                    style: GoogleFonts.openSans(
                      color: const Color(0xFFC79E68),
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_4()),
                  const Text(
                    "------",
                    style: TextStyle(
                      color: Color(0xFFC79E68),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Degree Title 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 135,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 21,
                      // color: Colors.red,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "DEGREE TITLE",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Container(
                  height: ScreenSize.fSize_50(),
                  width: ScreenSize.horizontalBlockSize! * 21,
                  color: Colors.transparent,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2010",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 138,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 21,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "School Name",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                  ),
                ),
              ),
            ),
          ),
          // Degree Title 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 143,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 21,
                      // color: Colors.red,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "DEGREE TITLE",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Container(
                  height: ScreenSize.fSize_50(),
                  width: ScreenSize.horizontalBlockSize! * 21,
                  color: Colors.transparent,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2011",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 146,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 21,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "School Name",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                  ),
                ),
              ),
            ),
          ),
          // Degree Title 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 151,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 21,
                      // color: Colors.red,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "DEGREE TITLE",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Container(
                  height: ScreenSize.fSize_50(),
                  width: ScreenSize.horizontalBlockSize! * 21,
                  color: Colors.transparent,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2012",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 154,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 21,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "School Name",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                  ),
                ),
              ),
            ),
          ),
          // Skills Dotes
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 66.7,
            left: ScreenSize.horizontalBlockSize! * 68,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 66.7,
            left: ScreenSize.horizontalBlockSize! * 82,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          // Language Dotes
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 96.8,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 96.8,
            left: ScreenSize.horizontalBlockSize! * 86.7,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          // Education Dotes
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 133.8,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 133.8,
            left: ScreenSize.horizontalBlockSize! * 88,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF3F5574)),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 170,
            left: ScreenSize.horizontalBlockSize! * 64,
            child: Text(
              "Find me on social media",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 175,
            left: ScreenSize.horizontalBlockSize! * 66,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD39E6C),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenSize.fSize_6()))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                        "assets/image/Template Image/Resume 5 Image/facebook.png",
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_10()),
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD39E6C),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenSize.fSize_6()))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                        "assets/image/Template Image/Resume 5 Image/linkedin.png",
                        color: Colors.white),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_10()),
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: BoxDecoration(
                      color: const Color(0xFFD39E6C),
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenSize.fSize_6()))),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                        "assets/image/Template Image/Resume 4 Image/twitter.png",
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

///// Template 6
  template6Preview() {
    return Stack(
      children: [
        Container(
          height: ScreenSize.horizontalBlockSize! * 210,
          color: const Color(0xFF05334B),
        ),
        Image.asset("assets/image/Template Image/Resume 6 Image/Vector 8.png",
            scale: 2.3, color: const Color(0xFFE8F0F3)),
        Positioned(
          top: ScreenSize.fSize_20(),
          left: ScreenSize.fSize_20(),
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 43,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "MARK SMITH",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenSize.fSize_18(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 10,
          left: ScreenSize.fSize_20(),
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 43,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "WEB DEVELOPER",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_14(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 16,
          left: ScreenSize.fSize_18(),
          child: Icon(Icons.code,
              color: Colors.white, size: ScreenSize.fSize_40()),
        ),
        Positioned(
          bottom: 0,
          left: ScreenSize.fSize_160(),
          child: Image.asset(
            "assets/image/Template Image/Resume 6 Image/Vector 9.png",
            // fit: BoxFit.fitHeight,
            color: const Color(0xFFE8F0F3),
            scale: 1.3,
          ),
        ),
        Positioned(
          top: ScreenSize.fSize_40(),
          left: ScreenSize.horizontalBlockSize! * 55,
          child: Transform.rotate(
            angle: 0.8,
            child: textController.profileImage != null
                ? Container(
                    height: ScreenSize.fSize_110(),
                    width: ScreenSize.fSize_110(),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(textController.profileImage),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(ScreenSize.fSize_10()))),
                  )
                : Container(
                    height: ScreenSize.fSize_110(),
                    width: ScreenSize.fSize_110(),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                            Radius.circular(ScreenSize.fSize_10()))),
                  ),
          ),
        ),
        //// Facebook
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 35,
          left: ScreenSize.fSize_4(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.facebook,
                  color: Colors.white, size: ScreenSize.fSize_13()),
              SizedBox(width: ScreenSize.fSize_3()),
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_16(),
                width: ScreenSize.horizontalBlockSize! * 15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "marksmith",
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_6(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //// Twitter
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 35,
          left: ScreenSize.horizontalBlockSize! * 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  "assets/image/Template Image/Resume 6 Image/twitter.png",
                  scale: 10),
              SizedBox(width: ScreenSize.fSize_3()),
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_16(),
                width: ScreenSize.horizontalBlockSize! * 15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "@marksmith",
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_6(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //// Instagram
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 35,
          left: ScreenSize.horizontalBlockSize! * 40,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                  "assets/image/Template Image/Resume 6 Image/instagram.png",
                  scale: 10),
              SizedBox(width: ScreenSize.fSize_3()),
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_16(),
                width: ScreenSize.horizontalBlockSize! * 15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "marksmith",
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_6(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        /// About Me
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 46,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 48,
            decoration: BoxDecoration(
                color: const Color(0xFFE8F0F3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenSize.fSize_100()),
                    bottomRight: Radius.circular(ScreenSize.fSize_100()))),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(right: ScreenSize.fSize_70()),
                child: Text(
                  "About Me",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_16(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 57,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_50(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),

        /// Education
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 75,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 48,
            decoration: BoxDecoration(
                color: const Color(0xFFE8F0F3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenSize.fSize_100()),
                    bottomRight: Radius.circular(ScreenSize.fSize_100()))),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(right: ScreenSize.fSize_70()),
                child: Text(
                  "Education",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_16(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 82,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "University of Tech - Bachelor Degree",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 98,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2014",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 105,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Univesity of Tech  -  Master",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 113,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 125,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2017",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),

        /// Experience
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 138,
          child: Container(
            height: ScreenSize.fSize_30(),
            width: ScreenSize.horizontalBlockSize! * 48,
            decoration: BoxDecoration(
                color: const Color(0xFFE8F0F3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenSize.fSize_100()),
                    bottomRight: Radius.circular(ScreenSize.fSize_100()))),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(right: ScreenSize.fSize_70()),
                child: Text(
                  "Experience",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_16(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 147,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tech Company  -  Junior Data",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 155,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 166,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2017",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 173,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Techno Co  -  Senior Data",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 181,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_40(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 192,
          left: ScreenSize.fSize_10(),
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 42,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "2020",
                hintStyle: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 208,
          child: Container(
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 52,
            decoration: BoxDecoration(
                color: const Color(0xFFE8F0F3),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenSize.fSize_100()))
                // color: Colors.red
                ),
          ),
        ),
        //// Contact
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 55,
          left: ScreenSize.horizontalBlockSize! * 53,
          child: Text(
            "Contact",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF05334B),
              fontSize: ScreenSize.fSize_16(),
            ),
          ),
        ),
        //// Mail Icon
        Positioned(
            top: ScreenSize.horizontalBlockSize! * 64.3,
            left: ScreenSize.horizontalBlockSize! * 56,
            child: Icon(
              Icons.mail,
              size: ScreenSize.fSize_10(),
              color: const Color(0xFF05334B),
            )),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 65,
          left: ScreenSize.horizontalBlockSize! * 63,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_12(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Name@company.com",
                hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_8()),
              ),
            ),
          ),
        ),
        //// Address Icon
        Positioned(
            top: ScreenSize.horizontalBlockSize! * 72.3,
            left: ScreenSize.horizontalBlockSize! * 56,
            child: Icon(
              Icons.home_filled,
              size: ScreenSize.fSize_12(),
              color: const Color(0xFF05334B),
            )),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 73.3,
          left: ScreenSize.horizontalBlockSize! * 63,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_12(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Street Avenue 90",
                hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_8()),
              ),
            ),
          ),
        ),
        //// Mobile Number
        Positioned(
            top: ScreenSize.horizontalBlockSize! * 81.3,
            left: ScreenSize.horizontalBlockSize! * 56,
            child: Icon(
              Icons.phone_android_outlined,
              size: ScreenSize.fSize_12(),
              color: const Color(0xFF05334B),
            )),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 82.3,
          left: ScreenSize.horizontalBlockSize! * 63,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_12(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "+ 09-8209-283-038",
                hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_8()),
              ),
            ),
          ),
        ),
        //// Website
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90.3,
          left: ScreenSize.horizontalBlockSize! * 56.5,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "assets/image/Template Image/Resume 6 Image/click.png",
              color: const Color(0xFF05334B),
              scale: 53,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 91,
          left: ScreenSize.horizontalBlockSize! * 63,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_12(),
            width: ScreenSize.fSize_100(),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "www.yourcompany.com",
                hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF05334B),
                    fontSize: ScreenSize.fSize_8()),
              ),
            ),
          ),
        ),
        //// Skills
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 100,
          left: ScreenSize.horizontalBlockSize! * 53,
          child: Text(
            "Skills",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF05334B),
              fontSize: ScreenSize.fSize_16(),
            ),
          ),
        ),
        ///// Round Slider
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 111,
          left: ScreenSize.horizontalBlockSize! * 52,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 43,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "PHP",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "JAVA",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "HTML",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 128,
          left: ScreenSize.horizontalBlockSize! * 52,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 43,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "CSS",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "SWIFT",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
                CircularPercentIndicator(
                  backgroundColor: const Color(0xFFBBD3D7),
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.79,
                  center: Text(
                    "RUBY",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF06314D),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2),
                  ),
                  progressColor: const Color(0xFF06314D),
                ),
              ],
            ),
          ),
        ),
        //// Language
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 148,
          left: ScreenSize.horizontalBlockSize! * 55,
          child: Text(
            "Language",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF05334B),
              fontSize: ScreenSize.fSize_16(),
            ),
          ),
        ),
        ////Language Slider
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 55,
          top: ScreenSize.horizontalBlockSize! * 158,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ENGLISH",
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF05334B),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_4()),
              Container(
                width: ScreenSize.horizontalBlockSize! * 37,
                height: ScreenSize.horizontalBlockSize! * 1,
                child: Resume6CustomSlider(
                  value: 10.0,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (value) {
                    // setState(() {
                    print('Slider value: $value');
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 55,
          top: ScreenSize.horizontalBlockSize! * 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ENGLISH",
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF05334B),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_4()),
              Container(
                width: ScreenSize.horizontalBlockSize! * 37,
                height: ScreenSize.horizontalBlockSize! * 1,
                child: Resume6CustomSlider(
                  value: 10.0,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (value) {
                    // setState(() {
                    print('Slider value: $value');
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 55,
          top: ScreenSize.horizontalBlockSize! * 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ENGLISH",
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF05334B),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_4()),
              Container(
                width: ScreenSize.horizontalBlockSize! * 37,
                height: ScreenSize.horizontalBlockSize! * 1,
                child: Resume6CustomSlider(
                  value: 10.0,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (value) {
                    // setState(() {
                    print('Slider value: $value');
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
