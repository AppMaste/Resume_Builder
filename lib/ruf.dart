/*
import 'package:fdottedline_nullsafety/fdottedline__nullsafety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App Data/pages/Create Resume/Sub Screen/Objective Screen/Object Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Personal information Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Work Experience Screen/Add Work Experience Screen.dart';
import 'App Data/utils/Resume Slider.dart';
import 'App Data/widgets/features/TextController.dart';
import 'App Data/widgets/global/MediaQuery/size.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: Center(
        child:Stack(
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
                      // controller: workList.value[0][0],
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
                  // controller: object.value[0],
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
        ) ,
      ),
    );
  }
}
*/
