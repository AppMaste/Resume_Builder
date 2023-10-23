import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
  templatePreview() {
    print("objecttttttt $workList");
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
                  left: ScreenSize.horizontalBlockSize! * 49,
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
              value: 50.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 179,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 20,
            child: Text(
              "Adobe Photoshop",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
                fontWeight: FontWeight.bold,
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
              value: 50.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 185.5,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 20,
            child: Text(
              "Microsoft Word",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
                fontWeight: FontWeight.bold,
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
              value: 50.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 192.5,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 20,
            child: Text(
              "HTML-S/CSS-3",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
                fontWeight: FontWeight.bold,
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
              value: 50.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 198.5,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 20,
            child: Text(
              "Adobe Illustrator",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
                fontWeight: FontWeight.bold,
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
              value: 50.0,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                // setState(() {
                //   print('Slider value: $value');
                // });
              },
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 204.5,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 20,
            // color: Colors.red,
            child: Text(
              "Microsoft Powerpoint",
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ////////////////////////////////
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
        Positioned(
          left: ScreenSize.horizontalBlockSize! * 49,
          top: ScreenSize.horizontalBlockSize! * 94,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
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
          left: ScreenSize.horizontalBlockSize! * 45.5,
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
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 70,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
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
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 128,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
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
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_16(),
          top: ScreenSize.horizontalBlockSize! * 192,
          child: Container(
            height: ScreenSize.fSize_10(),
            width: ScreenSize.fSize_10(),
            decoration: BoxDecoration(
                color: const Color(0xFFF2AB01),
                borderRadius: BorderRadius.circular(ScreenSize.fSize_100())),
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/Template Image/Resume 1 Images/Phone.png",
                scale: 25.0,
              ),
              SizedBox(width: ScreenSize.fSize_6()),
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_12(),
                    width: ScreenSize.fSize_100(),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "+1-718-310-5588",
                        hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_12(),
                    width: ScreenSize.fSize_100(),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "+1-718-310-5588",
                        hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 58.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/image/Template Image/Resume 1 Images/Phone.png",
                scale: 25.0,
              ),
              SizedBox(width: ScreenSize.fSize_6()),
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_12(),
                    width: ScreenSize.fSize_100(),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "www.yourwebsite.com",
                        hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_12(),
                    width: ScreenSize.fSize_100(),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "yourinfo@gmail.com",
                        hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                      ),
                    ),
                  ),
                ],
              )
            ],
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined,
                  size: ScreenSize.fSize_20(), color: Colors.white),
              SizedBox(width: ScreenSize.fSize_6()),
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_30(),
                width: ScreenSize.fSize_100(),
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "769 Prudence Street Lincoln Park, MI 48146",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_11()),
                  ),
                ),
              ),
            ],
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
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 104,
          child: Text(
            "DRAWIN B. MAGANA",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: ScreenSize.fSize_11(),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 112,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 35,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "2813 Shobe Lane Mancos, Co.",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_11()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenSize.fSize_4(),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Tel:+1-718-310-5588",
                      hintStyle: GoogleFonts.openSans(
                          color: Colors.white, fontSize: ScreenSize.fSize_10()),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenSize.fSize_4(),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email:www.yourwebsite.com",
                      hintStyle: GoogleFonts.openSans(
                          color: Colors.white, fontSize: ScreenSize.fSize_10()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 127,
          child: Text(
            "ROBERT J. BELVIN",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: ScreenSize.fSize_11(),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 135,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 35,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "2119 Firefax Drive Newark, NJ.",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_11()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenSize.fSize_4(),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Tel:+1-908-987-5103",
                      hintStyle: GoogleFonts.openSans(
                          color: Colors.white, fontSize: ScreenSize.fSize_10()),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenSize.fSize_4(),
                ),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email:www.yourwebsite.com",
                      hintStyle: GoogleFonts.openSans(
                          color: Colors.white, fontSize: ScreenSize.fSize_10()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
          top: ScreenSize.horizontalBlockSize! * 173.3,
          child: Text(
            "STANFORD UNIVERSITY",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: ScreenSize.fSize_10(),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 179,
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.fSize_100(),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "MASTER DEGREE GRADUATE",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_10()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2011-2013",
                      hintStyle: GoogleFonts.openSans(
                          color: Colors.white, fontSize: ScreenSize.fSize_10()),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 191.5,
          child: Text(
            "UNIVERSITY OF CHICAGO",
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: ScreenSize.fSize_10(),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_30(),
          top: ScreenSize.horizontalBlockSize! * 198,
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.fSize_100(),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "BACHELOR DEGREE GRADUATE",
                    hintStyle: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_10()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
                child: Container(
                  color: Colors.transparent,
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_100(),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2007-2010",
                      hintStyle: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: ScreenSize.fSize_10(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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

  template4Preview() {
    var hobbies = [
      "ILLUSTRATOR",
      "PHOTOSHOP",
      "INDESIGN",
      "MS WORD",
    ].obs;
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
                Positioned(
                  top: ScreenSize.horizontalBlockSize! * 116,
                  left: ScreenSize.horizontalBlockSize! * 3.5,
                  child: Container(
                    height: ScreenSize.horizontalBlockSize! * 50,
                    width: ScreenSize.horizontalBlockSize! * 33.5,
                    // color: Colors.red,
                    child: ListView.builder(
                      itemCount: hobbies.value.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: ScreenSize.fSize_6()),
                          child: Column(
                            children: [
                              Text(
                                hobbies[index],
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: ScreenSize.fSize_8(),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: ScreenSize.fSize_11()),
                                child: Container(
                                  width: ScreenSize.horizontalBlockSize! * 30,
                                  height: ScreenSize.horizontalBlockSize! * 2,
                                  // color: Colors.red,
                                  child: Resume4CustomSlider(
                                    value: 50.0,
                                    min: 0.0,
                                    max: 100.0,
                                    onChanged: (value) {
                                      // setState(() {
                                      print('Slider value: $value');
                                      // });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Text(
                    "KELLY WHITE",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenSize.horizontalBlockSize! * 6),
                  ),
                  Text(
                    "ART DIRECTOR",
                    style: GoogleFonts.openSans(
                        color: Colors.white, fontSize: ScreenSize.fSize_15()),
                  ),
                ],
              ),
            ),
          ),
        ),
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
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 65,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        // 2010-2015
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 64,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2010-2015",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 66.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 64,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 68,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              overflow: TextOverflow.ellipsis,
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.fSize_8(),
              ),
            ),
          ),
        ),
        // 2010-2017
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 78.5,
          left: ScreenSize.fSize_6(),
          child: Container(
            height: ScreenSize.fSize_13(),
            width: ScreenSize.fSize_13(),
            color: const Color(0xFFFF9C01),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 77.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2010-2017",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 81,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 77.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 82,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              overflow: TextOverflow.ellipsis,
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.fSize_8(),
              ),
            ),
          ),
        ),
        // 2015-2020
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
          top: ScreenSize.horizontalBlockSize! * 91,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2015-2020",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 94,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 90.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 94.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              overflow: TextOverflow.ellipsis,
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.fSize_8(),
              ),
            ),
          ),
        ),
        // 2018-2021
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
          top: ScreenSize.horizontalBlockSize! * 106,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2015-2020",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 108.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 105,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 109,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              overflow: TextOverflow.ellipsis,
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.fSize_8(),
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
        // Ex. 2010-2015
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
          top: ScreenSize.horizontalBlockSize! * 133.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2010-2015",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 136.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 133,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 137.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 26,
            color: Colors.transparent,
            child: Text(
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
              ),
            ),
          ),
        ),
        // Ex. 2010-2017
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
          top: ScreenSize.horizontalBlockSize! * 151.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2010-2017",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 154.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 151,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 155.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
              ),
            ),
          ),
        ),
        // Ex. 2015-2020
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
          top: ScreenSize.horizontalBlockSize! * 170.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2015-2020",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 173.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 170,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 174.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.fSize_8(),
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
          top: ScreenSize.horizontalBlockSize! * 190.5,
          left: ScreenSize.fSize_28(),
          child: Text(
            "2015-2020",
            style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 193,
          left: ScreenSize.fSize_28(),
          child: Text(
            "Lorem ipsum",
            style: GoogleFonts.openSans(
              fontSize: ScreenSize.horizontalBlockSize! * 3.1,
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 189.5,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Text(
            "LOREM IPSUM",
            style: GoogleFonts.openSans(fontSize: ScreenSize.fSize_10()),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 194,
          left: ScreenSize.horizontalBlockSize! * 30,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 25,
            color: Colors.transparent,
            child: Text(
              "Porttitor amet massa Doner dolormolestie\niumfeliscon lore ipsum dolor tfringilla.",
              style: GoogleFonts.openSans(
                fontSize: ScreenSize.horizontalBlockSize! * 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

  template5Preview() {
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
          Positioned(
            top: ScreenSize.fSize_40(),
            left: ScreenSize.horizontalBlockSize! * 41,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_30(),
              width: ScreenSize.horizontalBlockSize! * 20,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Karrin",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_24(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.fSize_60(),
            left: ScreenSize.horizontalBlockSize! * 41,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_30(),
              width: ScreenSize.horizontalBlockSize! * 20,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Zahra",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.horizontalBlockSize! * 6.4,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 19,
            left: ScreenSize.horizontalBlockSize! * 41,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_30(),
              width: ScreenSize.horizontalBlockSize! * 28,
              child: TextField(
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
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Youremail@email.com",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_11()),
                ),
              ),
            ),
          ),
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
                color: Colors.transparent,
                height: ScreenSize.fSize_50(),
                width: ScreenSize.horizontalBlockSize! * 45,
                child: TextField(
                  maxLines: 5,
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
          // Language Slider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 101,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SPANISH",
                  style: GoogleFonts.openSans(
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: ScreenSize.fSize_8(),
                  width: ScreenSize.horizontalBlockSize! * 30,
                  color: Colors.red,
                  child: Resume5CustomSlider(
                    value: 10.0,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {
                      // setState(() {
                      //   print('Slider value: $value');
                      // });
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 110,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ENGLISH",
                  style: GoogleFonts.openSans(
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: ScreenSize.fSize_8(),
                  width: ScreenSize.horizontalBlockSize! * 30,
                  color: Colors.red,
                  child: Resume5CustomSlider(
                    value: 10.0,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {
                      // setState(() {
                      //   print('Slider value: $value');
                      // });
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 119,
            left: ScreenSize.horizontalBlockSize! * 62,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FRECH",
                  style: GoogleFonts.openSans(
                      fontSize: ScreenSize.fSize_10(),
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: ScreenSize.fSize_8(),
                  width: ScreenSize.horizontalBlockSize! * 30,
                  color: Colors.red,
                  child: Resume5CustomSlider(
                    value: 10.0,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (value) {
                      // setState(() {
                      //   print('Slider value: $value');
                      // });
                    },
                  ),
                ),
              ],
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
          left: ScreenSize.horizontalBlockSize! * 57,
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
            left: ScreenSize.horizontalBlockSize! * 57,
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
            left: ScreenSize.horizontalBlockSize! * 57,
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
            left: ScreenSize.horizontalBlockSize! * 57,
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
          left: ScreenSize.horizontalBlockSize! * 57.5,
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
          left: ScreenSize.horizontalBlockSize! * 57,
          child: Text(
            "Skills",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF05334B),
              fontSize: ScreenSize.fSize_16(),
            ),
          ),
        ),
        //// Language
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 150,
          left: ScreenSize.horizontalBlockSize! * 57,
          child: Text(
            "Language",
            style: GoogleFonts.openSans(
              fontWeight: FontWeight.bold,
              color: const Color(0xFF05334B),
              fontSize: ScreenSize.fSize_16(),
            ),
          ),
        ),
      ],
    );
  }
}
