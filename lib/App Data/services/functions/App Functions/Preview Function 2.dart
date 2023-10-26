// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/pages/Create%20Resume/Sub%20Screen/Objective%20Screen/Object%20Screen.dart';
import 'package:resume_builder/App%20Data/services/functions/App%20Functions/shape.dart';

// import 'package:resume_builder_app/App%20Data/services/functions/App%20Functions/shape.dart';
import 'dart:math' as math;
import '../../../../ruf.dart';
import '../../../pages/Create Resume/Sub Screen/Education Screen/Add Education Details Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Hobbies Screen/Add Hobbies Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Interest Screen/Add Interests Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Known Language/Known Language Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Personal information Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Reference Screen/Add Reference Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Skills Screen/Add Skills Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Work Experience Screen/Add Work Experience Screen.dart';
import '../../../utils/Resume Slider.dart';
import '../../../widgets/features/TextController.dart';
import '../../../widgets/global/MediaQuery/size.dart';

PreViewAppController2 preViewAppController2 = PreViewAppController2();

class PreViewAppController2 extends GetxController {
  template7Preview() {
    return SizedBox(
      height: ScreenSize.horizontalBlockSize! * 210,
      child: Stack(
        children: [
          Container(
            height: ScreenSize.horizontalBlockSize! * 45,
            color: const Color(0xFFE0E0E0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenSize.fSize_6()),
                  Row(
                    children: [
                      Image.asset(
                        "assets/image/Template Image/Resume 7 Image/profile-user.png",
                        scale: 29,
                      ),
                      SizedBox(width: ScreenSize.fSize_10()),
                      Text(
                        "ABOUT ME",
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenSize.fSize_15(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_10()),
                  Container(
                    height: ScreenSize.horizontalBlockSize! * 26,
                    width: ScreenSize.horizontalBlockSize! * 42,
                    // color: Colors.red,
                    child: TextField(
                      controller: object.value[0],
                      maxLines: 7,
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w500,
                        fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        hintStyle: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.fSize_3(),
            left: ScreenSize.horizontalBlockSize! * 55,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_45(),
              width: ScreenSize.horizontalBlockSize! * 38,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.fSize_18(),
                  fontWeight: FontWeight.w800,
                ),
                // controller: textController.nameController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "NOEL TAYLOR",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: ScreenSize.fSize_18(),
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 8,
            left: ScreenSize.horizontalBlockSize! * 57.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                ),
                // controller: textController.professionController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "GRAPHIC & WEB DESIGNER",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 40,
            left: ScreenSize.horizontalBlockSize! * 48.5,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 180,
              width: ScreenSize.fSize_150(),
              color: const Color(0xFF313332),
              child: Stack(
                children: [
                  Positioned(
                    top: ScreenSize.fSize_140(),
                    left: ScreenSize.fSize_10(),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/image/Template Image/Resume 7 Image/profile-user.png",
                          color: Colors.white,
                          scale: 25,
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "CONTACT ME",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.fSize_15()),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 44,
                    left: ScreenSize.fSize_34(),
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.fSize_100(),
                      child: TextField(
                        controller: PERSONAL.value.isEmpty
                            ? textController.phoneController.value
                            : PERSONAL.value[0][4],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+1-718-310-5588",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_11()),
                        ),
                      ),
                    ),
                  ),
                  //// Phone Number
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 48.8,
                    left: ScreenSize.horizontalBlockSize! * 3,
                    child: Icon(
                      Icons.phone_in_talk,
                      size: ScreenSize.horizontalBlockSize! * 4,
                      color: Colors.white,
                    ),
                  ),
                  //// Website
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 55,
                    left: ScreenSize.horizontalBlockSize! * 3,
                    child: Icon(
                      Icons.language,
                      size: ScreenSize.horizontalBlockSize! * 4,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 50.5,
                    left: ScreenSize.fSize_34(),
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.fSize_100(),
                      child: TextField(
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_11()),
                        controller: PERSONAL.value.isEmpty
                            ? textController.emailController.value
                            : PERSONAL.value[0][2],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "www.yourwebsite.com",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_11()),
                        ),
                      ),
                    ),
                  ),
                  //// Address
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 61,
                    left: ScreenSize.horizontalBlockSize! * 3,
                    child: Icon(
                      Icons.location_on,
                      size: ScreenSize.horizontalBlockSize! * 4,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 56.5,
                    left: ScreenSize.fSize_34(),
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.fSize_100(),
                      child: TextField(
                        controller: PERSONAL.value.isEmpty
                            ? textController.addressController.value
                            : PERSONAL.value[0][5],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_10()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "769 PrudenceLincol Park, MI",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_10()),
                        ),
                      ),
                    ),
                  ),
                  //// Education
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 70,
                    left: ScreenSize.fSize_15(),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/image/Template Image/Resume 7 Image/mortarboard.png",
                          color: Colors.white,
                          scale: 25,
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "EDUCATION",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.fSize_15()),
                        ),
                      ],
                    ),
                  ),
                  //// Standford University
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 73.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 35,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.fSize_10(),
                        ),
                        controller: education.value.isEmpty
                            ? textController.schoolNameController.value
                            : education.value[0][0],
                        // controller: textController.schoolNameController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "STANFORD UNIVERSITY",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenSize.fSize_10(),
                          ),
                        ),
                      ),
                    ),
                    // child: Text(
                    //   "STANFORD UNIVERSITY",
                    //   style: GoogleFonts.openSans(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: ScreenSize.fSize_10(),
                    //   ),
                    // ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 77.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.fSize_110(),
                      child: TextField(
                        controller: education.value.isEmpty
                            ? textController.degreeController.value
                            : education.value[0][1],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "MASTER DEGREE GRADUATE",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 80,
                    child: Padding(
                      padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
                      child: Container(
                        color: Colors.transparent,
                        height: ScreenSize.fSize_40(),
                        width: ScreenSize.fSize_110(),
                        child: TextField(
                          controller: education.value.isEmpty
                              ? textController.startDateController.value
                              : education.value[0][5] == "true"
                                  ? textController.presentController.value
                                  : education.value[0][2],
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "2011-2013",
                            hintStyle: GoogleFonts.openSans(
                                color: Colors.white,
                                fontSize: ScreenSize.fSize_8()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //// University Chicago
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 90,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 42,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                        ),
                        controller: education.value.length < 2
                            ? textController.schoolNameController2.value
                            : education.value[1][0],
                        // controller: textController.schoolNameController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "UNIVERSITY OF CHICAGO",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 93,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.fSize_110(),
                      child: TextField(
                        controller: education.value.length < 2
                            ? textController.degreeController2.value
                            : education.value[1][1],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "BACHELOR DEGREE GRADUATE",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.horizontalBlockSize! * 2),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 102,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.fSize_110(),
                      child: TextField(
                        controller: education.value.length < 2
                            ? textController.startDateController.value
                            : education.value[1][5] == "true"
                                ? textController.presentController.value
                                : education.value[1][2],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2007-2010",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //// References
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 110,
                    left: ScreenSize.fSize_15(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.supervised_user_circle,
                          color: Colors.white,
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "REFERENCES",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: ScreenSize.fSize_15()),
                        ),
                      ],
                    ),
                  ),
                  //// Drawin B. Magana
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 115,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.isEmpty
                            ? textController.referenceName.value
                            : reference.value[0][0],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "DARWIN B. MAGANA",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 119,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 35,
                      child: TextField(
                        controller: reference.value.isEmpty
                            ? textController.referenceAddress.value
                            : reference.value[0][1],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_10()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2813 Shobe Lane Mancos, Co.",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_10()),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 123,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.isEmpty
                            ? textController.referenceNumber.value
                            : reference.value[0][2],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tel: +1-970-533-3393",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 126.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.isEmpty
                            ? textController.referenceEmail.value
                            : reference.value[0][3],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email:www.yourwebsite.com",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //// Robert J. Belvin
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 137,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.length < 2
                            ? textController.referenceName2.value
                            : reference.value[1][0],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ROBERT J. BELVIN",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 141.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.length < 2
                            ? textController.referenceAddress2.value
                            : reference.value[1][1],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2119 Shobe Lane Mancos, CO.",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 146,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.length < 2
                            ? textController.referenceNumber2.value
                            : reference.value[1][2],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tel: +1-908-987-5103",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: ScreenSize.horizontalBlockSize! * 149.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.length < 2
                            ? textController.referenceEmail2.value
                            : reference.value[1][3],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email:www.yourwebsite.com",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Image
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 20,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 47,
              width: ScreenSize.horizontalBlockSize! * 47,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: textController.profileImage != null
                    ? Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.green,
                            image: DecorationImage(
                                image: FileImage(textController.profileImage),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: const Color(0xFF313332), width: 3)),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.green,
                            image: const DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: const Color(0xFF313332), width: 3)),
                      ),
              ),
            ),
          ),
          // Job Experience
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 53,
            left: ScreenSize.fSize_10(),
            child: Row(
              children: [
                Image.asset(
                    "assets/image/Template Image/Resume 7 Image/suitcase.png",
                    scale: 28),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "JOB EXPERIENCE",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          // Senior web designer
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 55,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.isEmpty
                        ? textController.positionController.value
                        : workList.value[0][1],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_8(),
                    ),
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
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                      controller: workList.value.isEmpty
                          ? textController.workstartDateController.value
                          : workList.value[0][5] == "true"
                              ? textController.workPresentController1.value
                              : workList.value[0][1],
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_8(),
                      ),
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
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 57.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workCompanyController.value
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
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 40,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.descriptionController.value
                    : workList.value[0][4],
                maxLines: 2,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          // Graphic Designer
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 76,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 2
                        ? textController.positionController2.value
                        : workList.value[1][1],
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
                  padding: EdgeInsets.only(left: ScreenSize.fSize_17()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                      controller: workList.value.length < 2
                          ? textController.workstartDateController2.value
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
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 78.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.workCompanyController2.value
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
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 86,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.descriptionController2.value
                    : workList.value[1][4],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_10(),
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          // Marketing Manager
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 97,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 3
                        ? textController.positionController3.value
                        : workList.value[2][1],
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
                  padding: EdgeInsets.only(left: ScreenSize.fSize_17()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                      controller: workList.value.length < 3
                          ? textController.positionController3.value
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
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 100,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 29,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.workCompanyController3.value
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
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 108,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.descriptionController3.value
                    : workList.value[2][4],
                maxLines: 2,
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          // Skills
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 125,
            child: Row(
              children: [
                Image.asset(
                    "assets/image/Template Image/Resume 7 Image/skill.png",
                    scale: 29),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "SKILLS",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          //// Skills Slider 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 129.5,
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 25,
            top: ScreenSize.horizontalBlockSize! * 135,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 20,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][0],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 20,
                color: 'black',
              ),
            ),
          ),
          //// Skills Slider 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 135,
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 25,
            top: ScreenSize.horizontalBlockSize! * 140,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 20,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][1],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 20,
                color: 'black',
              ),
            ),
          ),
          //// Skills Slider 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 140.5,
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 25,
            top: ScreenSize.horizontalBlockSize! * 146,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 20,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 20,
                color: 'black',
              ),
            ),
          ),
          //// Skills Slider 4
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 145.5,
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 25,
            top: ScreenSize.horizontalBlockSize! * 151,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 20,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][3],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 20,
                color: 'black',
              ),
            ),
          ),
          //// Skills Slider 5
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 150.5,
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 25,
            top: ScreenSize.horizontalBlockSize! * 156,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 20,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][3],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 20,
                color: 'black',
              ),
            ),
          ),
          //// Language
          Positioned(
            left: ScreenSize.fSize_10(),
            top: ScreenSize.horizontalBlockSize! * 165,
            child: Row(
              children: [
                Image.asset(
                    "assets/image/Template Image/Resume 7 Image/skill.png",
                    scale: 35),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "LANGUAGE",
                  style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.fSize_8()),
                ),
              ],
            ),
          ),
          ///// Language 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 6,
            top: ScreenSize.horizontalBlockSize! * 172,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 166.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: language.value[0],
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
          ///// Language 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 6,
            top: ScreenSize.horizontalBlockSize! * 177,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 171.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: language.value[1],
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
          ///// Language 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 6,
            top: ScreenSize.horizontalBlockSize! * 182,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 176.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: language.value[2],
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
          ///// Language 4
          language.value.length < 4
              ? Container()
              : Positioned(
                  left: ScreenSize.horizontalBlockSize! * 6,
                  top: ScreenSize.horizontalBlockSize! * 187,
                  child: Container(
                    height: ScreenSize.fSize_6(),
                    width: ScreenSize.fSize_6(),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.red,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
          language.value.length < 4
              ? Container()
              : Positioned(
                  left: ScreenSize.horizontalBlockSize! * 9,
                  top: ScreenSize.horizontalBlockSize! * 181.7,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 12,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: language.value[3],
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
          ///// Language 5
          language.value.length < 5
              ? Container()
              : Positioned(
                  left: ScreenSize.horizontalBlockSize! * 6,
                  top: ScreenSize.horizontalBlockSize! * 192,
                  child: Container(
                    height: ScreenSize.fSize_6(),
                    width: ScreenSize.fSize_6(),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.red,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
          language.value.length < 5
              ? Container()
              : Positioned(
                  left: ScreenSize.horizontalBlockSize! * 9,
                  top: ScreenSize.horizontalBlockSize! * 186.7,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 12,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: language.value[4],
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
          //// Hobbies
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 28,
            top: ScreenSize.horizontalBlockSize! * 165,
            child: Row(
              children: [
                Image.asset(
                    "assets/image/Template Image/Resume 7 Image/skill.png",
                    scale: 35),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "HOBBIES",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ],
            ),
          ),
          ///// Hobbies 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 30,
            top: ScreenSize.horizontalBlockSize! * 172,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 33,
            top: ScreenSize.horizontalBlockSize! * 166.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[0],
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
          ///// Hobbies 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 30,
            top: ScreenSize.horizontalBlockSize! * 177,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 33,
            top: ScreenSize.horizontalBlockSize! * 171.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[1],
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
          ///// Hobbies 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 30,
            top: ScreenSize.horizontalBlockSize! * 182,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF333333),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 33,
            top: ScreenSize.horizontalBlockSize! * 176.7,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 12,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[2],
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
        ],
      ),
    );
  }

  template8Preview() {
    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      child: Stack(
        children: [
          Container(
            height: ScreenSize.horizontalBlockSize! * 45,
            width: double.maxFinite,
            color: const Color(0xFFE0E0E0),
            child: Stack(
              children: [
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50,
                  child: Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_50(),
                    width: ScreenSize.horizontalBlockSize! * 38,
                    child: TextField(
                      controller: workList.value.isEmpty
                          ? textController.descriptionController.value
                          : workList.value[0][4],
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_18(),
                        fontWeight: FontWeight.w800,
                      ),
                      // controller: textController.nameController.value,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mathew Smith",
                        hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_18(),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50,
                  top: ScreenSize.fSize_45(),
                  child: Container(
                    height: ScreenSize.fSize_20(),
                    width: ScreenSize.fSize_100(),
                    color: const Color(0xFFFFC905),
                  ),
                ),
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50.5,
                  top: ScreenSize.horizontalBlockSize! * 9.5,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.fSize_100(),
                    // color: const Color(0xFFFFC905),
                    child: TextField(
                      controller: PERSONAL.value.isEmpty
                          ? textController.professionController.value
                          : PERSONAL.value[0][1],
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "UI DESIGNER",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          fontSize: ScreenSize.fSize_8(),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50.5,
                  top: ScreenSize.horizontalBlockSize! * 23,
                  child: Text(
                    "PROFILE",
                    style: GoogleFonts.openSans(
                        color: const Color(0xFF1B1C1B),
                        fontSize: ScreenSize.fSize_15(),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50.5,
                  top: ScreenSize.horizontalBlockSize! * 30,
                  child: Container(
                    height: ScreenSize.fSize_3(),
                    width: ScreenSize.fSize_30(),
                    color: const Color(0xFFFFC905),
                  ),
                ),
                Positioned(
                  left: ScreenSize.horizontalBlockSize! * 50.5,
                  top: ScreenSize.horizontalBlockSize! * 31,
                  child: Container(
                    color: Colors.transparent,
                    height: ScreenSize.fSize_50(),
                    width: ScreenSize.horizontalBlockSize! * 43,
                    child: TextField(
                      controller: object.value[0],
                      maxLines: 2,
                      style: GoogleFonts.openSans(
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: ScreenSize.horizontalBlockSize! * 210,
            width: ScreenSize.horizontalBlockSize! * 45,
            color: const Color(0xFFE0E0E0),
          ),
          textController.profileImage != null
              ? Container(
                  height: ScreenSize.horizontalBlockSize! * 75,
                  width: ScreenSize.horizontalBlockSize! * 45,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                          image: FileImage(
                            textController.profileImage,
                          ),
                          fit: BoxFit.cover)),
                  // child: FileImage(textController.profileImage,),
                )
              : Container(
                  height: ScreenSize.horizontalBlockSize! * 75,
                  width: ScreenSize.horizontalBlockSize! * 45,
                  color: Colors.black,
                  child: Image.network(
                      "https://artriva.com/media/k2/items/cache/c889234799e865bbe90cee71f6cd2e53_XL.jpg",
                      fit: BoxFit.cover),
                ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 75,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 62,
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.black,
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 90,
            left: ScreenSize.fSize_13(),
            child: Container(
              height: ScreenSize.fSize_3(),
              width: ScreenSize.fSize_30(),
              color: const Color(0xFFFFC905),
            ),
          ),
          //// Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 83,
            left: ScreenSize.fSize_13(),
            child: Text(
              "EDUCATION",
              style: GoogleFonts.openSans(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          //// Enter Your Major 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 92,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.degreeController.value
                    : education.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenSize.fSize_13(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ENTER YOUR MAJOR",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_13(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 95.5,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 38,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.schoolNameController.value
                    : education.value[0][0],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Name Of Your University",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 100,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 38,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.startDateController.value
                    : education.value[0][5] == "true"
                        ? textController.presentController.value
                        : education.value[0][2],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2005-2009",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          //// UI Designer
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 3,
            top: ScreenSize.horizontalBlockSize! * 71,
            child: Container(
              height: ScreenSize.fSize_30(),
              width: ScreenSize.fSize_140(),
              color: const Color(0xFFFFC905),
              child: Padding(
                padding: EdgeInsets.only(
                    top: ScreenSize.fSize_14(),
                    right: ScreenSize.fSize_8(),
                    left: ScreenSize.fSize_8()),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "UI DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                      fontSize: ScreenSize.fSize_14(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Enter Your Major 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 110,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.degreeController2.value
                    : education.value[1][1],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: ScreenSize.fSize_13(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ENTER YOUR MAJOR",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_13(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 113.5,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 38,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.schoolNameController2.value
                    : education.value[1][0],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Name Of Your University",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 118.5,
            left: ScreenSize.fSize_13(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 38,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.startDateController.value
                    : education.value[1][5] == "true"
                        ? textController.presentController.value
                        : education.value[1][2],
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2009-2011",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          ///// Expertise
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 140,
            left: ScreenSize.fSize_10(),
            child: Text(
              "EXPERTISE",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_15(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 148,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_3(),
              width: ScreenSize.fSize_30(),
              color: const Color(0xFFFFC905),
            ),
          ),
          // Slider 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 153,
            left: ScreenSize.horizontalBlockSize! * 22.5,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 1,
              child: Resume8CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][0],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                // color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 147,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
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
          // Slider 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 158,
            left: ScreenSize.horizontalBlockSize! * 22.5,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 1,
              child: Resume8CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][1],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                // color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 152.5,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
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
          // Slider 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 163,
            left: ScreenSize.horizontalBlockSize! * 22.5,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 1,
              child: Resume8CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                // color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 157.5,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
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
          // Slider 4
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 168,
            left: ScreenSize.horizontalBlockSize! * 22.5,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 1,
              child: Resume8CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                // color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 162.5,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
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
          // Slider 5
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 173,
            left: ScreenSize.horizontalBlockSize! * 22.5,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 1,
              child: Resume8CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][4],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                // color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 167.5,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
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
          //// Phone, Email and Address Icon
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 180,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 30,
              width: ScreenSize.horizontalBlockSize! * 10,
              color: const Color(0xFFFFC905),
              child: Stack(
                children: [
                  Positioned(
                    left: ScreenSize.fSize_6(),
                    top: ScreenSize.fSize_4(),
                    child: const Icon(Icons.phone),
                  ),
                  Positioned(
                      left: ScreenSize.fSize_6(),
                      top: ScreenSize.horizontalBlockSize! * 12,
                      child: const Icon(Icons.mail)),
                  Positioned(
                    left: ScreenSize.fSize_6(),
                    top: ScreenSize.horizontalBlockSize! * 22,
                    child: const Icon(Icons.location_on),
                  ),
                ],
              ),
            ),
          ),
          //// Phone
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 180,
            left: ScreenSize.fSize_60(),
            child: Text(
              "Phone",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_13(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 180,
            left: ScreenSize.fSize_60(),
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
                  hintText: "+000 123 456 789",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_11()),
                ),
              ),
            ),
          ),
          //// Email
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 191,
            left: ScreenSize.fSize_60(),
            child: Text(
              "Email",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_13(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 190.5,
            left: ScreenSize.fSize_60(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_100(),
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.emailController.value
                    : PERSONAL.value[0][2],
                style: GoogleFonts.openSans(
                    color: Colors.black, fontSize: ScreenSize.fSize_10()),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "urname@gmail.com",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_10()),
                ),
              ),
            ),
          ),
          //// Address
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 201,
            left: ScreenSize.fSize_60(),
            child: Text(
              "Area",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_13(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 200.5,
            left: ScreenSize.fSize_60(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_100(),
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.addressController.value
                    : PERSONAL.value[0][5],
                style: GoogleFonts.openSans(
                    color: Colors.black, fontSize: ScreenSize.fSize_10()),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Your Street Address Here",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black, fontSize: ScreenSize.fSize_10()),
                ),
              ),
            ),
          ),
          //// Work Experience
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "WORK EXPERINCE",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_14(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 59,
            child: Container(
              height: ScreenSize.fSize_3(),
              width: ScreenSize.fSize_30(),
              color: const Color(0xFFFFC905),
            ),
          ),
          //// Enter Your Job Position Here
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 61,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.positionController.value
                    : workList.value[0][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Job Postion Here",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 71,
            child: Container(
              height: ScreenSize.fSize_18(),
              width: ScreenSize.fSize_60(),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFC905),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_4()))),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 51,
            top: ScreenSize.horizontalBlockSize! * 67.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_50(),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_4()))),
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workstartDateController.value
                    : workList.value[0][5] == "true"
                        ? textController.workPresentController1.value
                        : workList.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: ScreenSize.fSize_8(),
                ),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Present",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 68,
            top: ScreenSize.horizontalBlockSize! * 67,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workCompanyController.value
                    : workList.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Company Name / Location",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 77,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 43,
              child: TextField(
                maxLines: 2,
                controller: workList.value.isEmpty
                    ? textController.descriptionController.value
                    : workList.value[0][4],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                  ),
                ),
              ),
            ),
          ),
          //// Enter job Position here 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 90,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.positionController2.value
                    : workList.value[1][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_11(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Job Postion Here",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 100,
            child: Container(
              height: ScreenSize.fSize_18(),
              width: ScreenSize.fSize_60(),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFC905),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_4()))),
              child: Padding(
                padding: EdgeInsets.only(
                    right: ScreenSize.fSize_4(), left: ScreenSize.fSize_4()),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 96.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_60(),
              decoration: BoxDecoration(
                  // color: const Color(0xFFFFC905),
                  borderRadius:
                      BorderRadius.all(Radius.circular(ScreenSize.fSize_4()))),
              child: Padding(
                padding: EdgeInsets.only(
                    right: ScreenSize.fSize_4(), left: ScreenSize.fSize_4()),
                child: TextField(
                  controller: workList.value.length < 2
                      ? textController.workstartDateController2.value
                      : workList.value[1][5] == "true"
                          ? textController.presentController.value
                          : workList.value[1][2],
                  style: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "2015-2017",
                    hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 68,
            top: ScreenSize.horizontalBlockSize! * 96,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.workCompanyController2.value
                    : workList.value[1][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Company Name / Location",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 108,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 43,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.descriptionController2.value
                    : workList.value[1][4],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                  ),
                ),
              ),
            ),
          ),
          //// References
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 124,
            child: Text(
              "REFERENCE",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_14(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 133,
            child: Container(
              height: ScreenSize.fSize_3(),
              width: ScreenSize.fSize_30(),
              color: const Color(0xFFFFC905),
            ),
          ),
          //// Glenin M. Gregory
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 48,
            top: ScreenSize.horizontalBlockSize! * 134.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 23,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceName.value
                    : reference.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Glenin M. Gregory",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 48,
            top: ScreenSize.horizontalBlockSize! * 138.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 23,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceAddress.value
                    : reference.value[0][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Director Marix Media ltd",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 48,
            top: ScreenSize.horizontalBlockSize! * 142.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 23,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceNumber.value
                    : reference.value[0][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Phone: +555 123 454",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          ///// Jennifer S. Gavin
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 74,
            top: ScreenSize.horizontalBlockSize! * 134.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 23,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceName2.value
                    : reference.value[1][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Jennifer S. Gavin",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 74,
            top: ScreenSize.horizontalBlockSize! * 138.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 23,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceAddress2.value
                    : reference.value[1][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Director Marix Media ltd",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 74,
            top: ScreenSize.horizontalBlockSize! * 142.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 21,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceNumber2.value
                    : reference.value[1][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Phone: +555 123 454",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF1B1C1B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          //// Interests
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 158,
            child: Text(
              "INTERESTS",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF1B1C1B),
                  fontSize: ScreenSize.fSize_14(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 168,
            child: Container(
              height: ScreenSize.fSize_3(),
              width: ScreenSize.fSize_30(),
              color: const Color(0xFFFFC905),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 172,
            child: Row(
              children: [
                Image.asset(
                  interest2.value.isEmpty
                      ? "assets/image/Template Image/Resume 8 Image/travel.png"
                      : interest2.value[0],
                  scale: 20,
                ),
                SizedBox(width: ScreenSize.fSize_15()),
                Text(
                  interest.value.isEmpty ? "Travel" : interest.value[0],
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 181,
            child: Row(
              children: [
                Image.asset(
                  interest2.value.isEmpty
                      ? "assets/image/Template Image/Resume 8 Image/headphones.png"
                      : interest2.value[1],
                  // "assets/image/Template Image/Resume 8 Image/headphones.png",
                  scale: 20,
                ),
                SizedBox(width: ScreenSize.fSize_15()),
                Text(
                  interest.value.isEmpty ? "Music" : interest.value[1],
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50.5,
            top: ScreenSize.horizontalBlockSize! * 191,
            child: Row(
              children: [
                Image.asset(
                  interest2.value.isEmpty
                      ? "assets/image/Template Image/Resume 8 Image/writing.png"
                      : interest2.value[2],
                  // "assets/image/Template Image/Resume 8 Image/writing.png",
                  scale: 20,
                ),
                SizedBox(width: ScreenSize.fSize_14()),
                Text(
                  interest.value.isEmpty ? "Writing" : interest.value[2],
                  // "Writing",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 50,
            top: ScreenSize.horizontalBlockSize! * 200.5,
            child: Row(
              children: [
                Image.asset(
                  interest2.value.isEmpty
                      ? "assets/image/Template Image/Resume 8 Image/chess.png"
                      : interest2.value[3],
                  // "assets/image/Template Image/Resume 8 Image/chess.png",
                  scale: 20,
                ),
                SizedBox(width: ScreenSize.fSize_15()),
                Text(
                  interest.value.isEmpty ? "Chess" : interest.value[3],
                  // "Chess",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  template9Preview() {
    return Container(
      height: ScreenSize.horizontalBlockSize! * 200,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: ScreenSize.fSize_10(),
            left: ScreenSize.fSize_10(),
            child: textController.profileImage != null
                ? Container(
                    height: ScreenSize.horizontalBlockSize! * 60,
                    width: ScreenSize.fSize_140(),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F3EF),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(ScreenSize.fSize_24()),
                          bottomLeft: Radius.circular(ScreenSize.fSize_24())),
                      image: DecorationImage(
                        image: FileImage(textController.profileImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(
                    height: ScreenSize.horizontalBlockSize! * 60,
                    width: ScreenSize.fSize_140(),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F3EF),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(ScreenSize.fSize_24()),
                          bottomLeft: Radius.circular(ScreenSize.fSize_24())),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/image/Template Image/Resume 9 Image/image.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ),
          //// Malkin Anderson
          Positioned(
            top: ScreenSize.fSize_15(),
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 24,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][0],
                style: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_24(),
                    fontWeight: FontWeight.w500),
                // controller: textController.nameController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Malkin",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF454545),
                      fontSize: ScreenSize.fSize_24(),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 11.5,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                style: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_28(),
                    fontWeight: FontWeight.w700),
                controller: textController.nameController2.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Anderson",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF454545),
                      fontSize: ScreenSize.fSize_28(),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          //// Ux Designer

          Positioned(
            top: ScreenSize.horizontalBlockSize! * 21,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 35,
              child: TextField(
                style: GoogleFonts.openSans(
                    letterSpacing: 1,
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_15(),
                    fontWeight: FontWeight.w400),
                controller: PERSONAL.value.isEmpty
                    ? textController.professionController.value
                    : PERSONAL.value[0][1],
                // controller: textController.nameController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "UX Designer",
                  hintStyle: GoogleFonts.openSans(
                      letterSpacing: 1,
                      color: const Color(0xFF454545),
                      fontSize: ScreenSize.fSize_15(),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          ///// Profile
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 34,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Text(
              "Profile",
              style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_15(),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 43,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_2(),
              width: ScreenSize.fSize_34(),
              color: const Color(0xFF454545),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 44,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_70(),
              width: ScreenSize.horizontalBlockSize! * 47,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.8,
                ),
                controller: object.value[0],
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.8,
                  ),
                ),
              ),
            ),
          ),
          //// Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 70,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 60,
              width: ScreenSize.fSize_140(),
              decoration: BoxDecoration(
                color: const Color(0xFFFBEDE0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(ScreenSize.fSize_24()),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: ScreenSize.fSize_15(), top: ScreenSize.fSize_30()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Education",
                      style: GoogleFonts.openSans(
                          letterSpacing: 1.5,
                          color: const Color(0xFF454545),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: ScreenSize.fSize_17()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.fSize_34(),
                      color: const Color(0xFF454545),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Education 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 89,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.startDateController.value
                    : education.value[0][5] == "true"
                        ? textController.presentController.value
                        : education.value[0][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2014-2018",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 92.5,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.degreeController.value
                    : education.value[0][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Degree Name",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 96,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.schoolNameController.value
                    : education.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "University name here",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          // Education 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 108,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.startDateController.value
                    : education.value[1][5] == "true"
                    ? textController.presentController.value
                    : education.value[1][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2012-2014",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 112,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.degreeController2.value
                    : education.value[1][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Degree Name",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 116,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.schoolNameController2.value
                    : education.value[1][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "University name here",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          ////////
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 135,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 60,
              width: ScreenSize.fSize_140(),
              decoration: BoxDecoration(
                color: const Color(0xFFFBEBEB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(ScreenSize.fSize_24()),
                ),
              ),
            ),
          ),
          // Contact Me
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 140,
            left: ScreenSize.fSize_25(),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact",
                    style: GoogleFonts.openSans(
                        letterSpacing: 1.5,
                        color: const Color(0xFF454545),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: ScreenSize.fSize_10()),
                  Container(
                    height: ScreenSize.fSize_2(),
                    width: ScreenSize.fSize_34(),
                    color: const Color(0xFF454545),
                  ),
                ],
              ),
            ),
          ),
          //// Phone Number
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 155,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_15(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Phone",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 154,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.phoneController.value
                    : PERSONAL.value[0][4],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "+0000 123 456 789",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          //// Email
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 168,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_15(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 167,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.emailController.value
                    : PERSONAL.value[0][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "yourname@gmail.com",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          //// Address
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 181,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_15(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Address",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenSize.fSize_11(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 180,
            left: ScreenSize.fSize_25(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.addressController.value
                    : PERSONAL.value[0][5],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF454545),
                  fontSize: ScreenSize.fSize_10(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "yourname@gmail.com",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF454545),
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          ///// Experience
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 70,
            left: ScreenSize.horizontalBlockSize! * 43,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 85,
              width: ScreenSize.fSize_170(),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F3EF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ScreenSize.fSize_24()),
                    bottomRight: Radius.circular(
                      ScreenSize.fSize_24(),
                    )),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: ScreenSize.fSize_15(), top: ScreenSize.fSize_30()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Experience",
                      style: GoogleFonts.openSans(
                          letterSpacing: 1.5,
                          color: const Color(0xFF454545),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: ScreenSize.fSize_17()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.fSize_34(),
                      color: const Color(0xFF454545),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Experience Info 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 89,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workstartDateController.value
                    : workList.value[0][5] == "true"
                    ? textController.workPresentController1.value
                    : workList.value[0][1],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2020-Present",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 113,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workCompanyController.value
                    : workList.value[0][0],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Company Name",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 89,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.positionController.value
                    : workList.value[0][1],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Senior UX Designer",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 93.5,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.positionController.value
                    : workList.value[0][1],
                style: GoogleFonts.openSans(
                  // fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                 maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          // Experience Info 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 110,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.workstartDateController2.value
                    : workList.value[1][5] == "true"
                    ? textController.presentController.value
                    : workList.value[1][2],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2018-2020",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 92,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.workCompanyController2.value
                    : workList.value[1][0],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Company Name",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 110,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.positionController2.value
                    : workList.value[1][1],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Junior UX Designer",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 115,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.descriptionController2.value
                    : workList.value[1][4],
                style: GoogleFonts.openSans(
                  // fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          // Experience Info 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 131,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.workstartDateController3.value
                    : workList.value[2][5] == "true"
                    ? textController.presentController.value
                    : workList.value[2][2],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2018-2020",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 134,
            left: ScreenSize.horizontalBlockSize! * 47,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.workCompanyController3.value
                    : workList.value[2][0],
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Company Name",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 131,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.positionController3.value
                    : workList.value[2][1],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "UX Designer",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 136,
            left: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 25,
              // color: Colors.red,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.descriptionController3.value
                    : workList.value[2][4],
                style: GoogleFonts.openSans(
                  // fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.fSize_8(),
                ),
                maxLines: 3,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    // fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          ///// Skills
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 160,
            left: ScreenSize.horizontalBlockSize! * 43,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 35,
              width: ScreenSize.fSize_170(),
              decoration: BoxDecoration(
                color: const Color(0xFFFBEBEB),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(ScreenSize.fSize_24()),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: ScreenSize.fSize_15(), top: ScreenSize.fSize_30()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills",
                      style: GoogleFonts.openSans(
                          letterSpacing: 1.5,
                          color: const Color(0xFF454545),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.fSize_28(),
                      color: const Color(0xFF454545),
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                  ],
                ),
              ),
            ),
          ),
          // Skill Slider 1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 180,
            left: ScreenSize.horizontalBlockSize! * 68,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][0],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 24,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 175,
            left: ScreenSize.horizontalBlockSize! * 47,
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
          // Skill Slider 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 185,
            left: ScreenSize.horizontalBlockSize! * 68,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][1],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 24,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 179.5,
            left: ScreenSize.horizontalBlockSize! * 47,
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
          // Skill Slider 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 190,
            left: ScreenSize.horizontalBlockSize! * 68,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {},
                width: ScreenSize.horizontalBlockSize! * 24,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 184.5,
            left: ScreenSize.horizontalBlockSize! * 47,
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
        ],
      ),
    );
  }

  template10Preview() {
    List skills = [
      "Adobe Photoshop",
      "Adobe Illustrator",
      "Microsoft PowerPoint",
      "Microsoft Word",
      "HTML-S/CSS-3",
    ];
    List language = [
      "ENGLISH",
      "SPANISH",
      "FRENCH",
    ];
    List hobbies = [
      "Book Reading",
      "Travelling",
      "Playing Chess",
    ];

    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      width: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            top: ScreenSize.fSize_20(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 33,
              width: ScreenSize.fSize_30(),
              color: const Color(0xFF333333),
            ),
          ),
          //// Noel Taylor
          Positioned(
            top: ScreenSize.fSize_50(),
            left: ScreenSize.fSize_40(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_60(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.nameController.value
                    : PERSONAL.value[0][0],
                maxLines: 2,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.fSize_18(),
                  fontWeight: FontWeight.w800,
                ),
                // controller: textController.nameController.value,
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText: "NOEL TAYLOR",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 24,
            left: ScreenSize.fSize_40(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 35,
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.professionController.value
                    : PERSONAL.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                // controller: textController.professionController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "GRAPHIC & WEB DESIGNER",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: ScreenSize.horizontalBlockSize! * 2,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          //// Image
          Positioned(
            top: ScreenSize.fSize_20(),
            left: ScreenSize.horizontalBlockSize! * 38,
            child: textController.profileImage != null
                ? Container(
                    height: ScreenSize.horizontalBlockSize! * 33,
                    width: ScreenSize.horizontalBlockSize! * 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF333333),
                          width: 5,
                        ),
                        image: DecorationImage(
                            image: FileImage(textController.profileImage),
                            fit: BoxFit.cover)),
                  )
                : Container(
                    height: ScreenSize.horizontalBlockSize! * 33,
                    width: ScreenSize.horizontalBlockSize! * 30,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF333333),
                          width: 5,
                        ),
                        image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
                            ),
                            fit: BoxFit.cover)),
                  ),
          ),
          //// Contact
          Positioned(
            top: ScreenSize.fSize_20(),
            left: ScreenSize.horizontalBlockSize! * 70,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 33,
              width: ScreenSize.horizontalBlockSize! * 30,
              color: const Color(0xFF333333),
              child: Stack(
                children: [
                  Positioned(
                    top: ScreenSize.fSize_6(),
                    left: ScreenSize.fSize_6(),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/image/Template Image/Resume 10 Image/user.png",
                          scale: 28,
                          color: Colors.white,
                        ),
                        SizedBox(width: ScreenSize.fSize_6()),
                        Text(
                          "CONTACT",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: ScreenSize.fSize_10()),
                        ),
                      ],
                    ),
                  ),
                  ///// Phone Number
                  Positioned(
                    top: ScreenSize.fSize_34(),
                    left: ScreenSize.fSize_6(),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/phone_square_icon.png",
                      fit: BoxFit.cover,
                      color: Colors.white,
                      scale: 34.0,
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 4,
                    left: ScreenSize.horizontalBlockSize! * 6.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        controller: PERSONAL.value.isEmpty
                            ? textController.phoneController.value
                            : PERSONAL.value[0][4],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+1-718-310-5588",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 7,
                    left: ScreenSize.horizontalBlockSize! * 6.5,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        controller: PERSONAL.value.isEmpty
                            ? textController.phoneController.value
                            : PERSONAL.value[0][4],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+1-313-381-8167",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                  ///// Website
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 17.7,
                    left: ScreenSize.fSize_6(),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/web.png",
                      fit: BoxFit.cover,
                      color: Colors.white,
                      scale: 34.0,
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 12,
                    left: ScreenSize.horizontalBlockSize! * 6.5,
                    child: Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        controller: textController.webSiteController.value,
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "www.yourwebsite.com",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 15,
                    left: ScreenSize.horizontalBlockSize! * 6.5,
                    child: Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        controller: PERSONAL.value.isEmpty
                            ? textController.emailController.value
                            : PERSONAL.value[0][2],
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "yourinfo@email.com",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                  ///// Address
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 26,
                    left: ScreenSize.fSize_6(),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/address.png",
                      fit: BoxFit.cover,
                      color: Colors.white,
                      scale: 34.0,
                    ),
                  ),
                  Positioned(
                    top: ScreenSize.horizontalBlockSize! * 22,
                    left: ScreenSize.horizontalBlockSize! * 6.5,
                    child: Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                          controller: PERSONAL.value.isEmpty
                            ? textController.addressController.value
                            : PERSONAL.value[0][5],
                        maxLines: 2,
                        // controller: textController.webSiteController.value,
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_8()),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "769 Prudence Street Lincoln Park, MI 48146",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_8()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ///// About Me
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 45,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 170,
              width: ScreenSize.horizontalBlockSize! * 47,
              color: const Color(0xFFEEEEEE),
              child: Padding(
                padding: EdgeInsets.only(
                    top: ScreenSize.fSize_15(), left: ScreenSize.fSize_12()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                            "assets/image/Template Image/Resume 10 Image/user.png",
                            color: const Color(0xFF333333),
                            scale: 17),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "ABOUT ME",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.fSize_17(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Container(
                      color: Colors.transparent,
                      height: ScreenSize.horizontalBlockSize! * 20,
                      width: ScreenSize.horizontalBlockSize! * 43,
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                          hintStyle: GoogleFonts.openSans(
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_18()),
                    Container(
                      color: Colors.transparent,
                      height: ScreenSize.horizontalBlockSize! * 12,
                      width: ScreenSize.horizontalBlockSize! * 43,
                      child: TextField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                          hintStyle: GoogleFonts.openSans(
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                          ),
                        ),
                      ),
                    ),
                    ///// Divider
                    const Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Divider(
                        color: Color(0xFF333333),
                        thickness: 1,
                      ),
                    ),
                    //// Skills
                    SizedBox(height: ScreenSize.fSize_10()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: ScreenSize.fSize_24(),
                          width: ScreenSize.fSize_24(),
                          decoration: BoxDecoration(
                              color: const Color(0xFF333333),
                              borderRadius:
                                  BorderRadius.circular(ScreenSize.fSize_3())),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              "assets/image/Template Image/Resume 7 Image/skill.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "SKILLS",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.fSize_17(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Container(
                      height: ScreenSize.horizontalBlockSize! * 32,
                      width: ScreenSize.horizontalBlockSize! * 41,
                      // color: Colors.red,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: skills.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(bottom: ScreenSize.fSize_14()),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: ScreenSize.horizontalBlockSize! * 18,
                                  // color: Colors.red,
                                  child: Text(
                                    skills[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! * 1.8,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: ScreenSize.horizontalBlockSize! * 21,
                                  height: ScreenSize.horizontalBlockSize! * 2,
                                  child: Resume4CustomSlider(
                                    value: 50.0,
                                    min: 0.0,
                                    max: 100.0,
                                    onChanged: (value) {
                                      // setState(() {
                                      print('Slider value: $value');
                                      // });
                                    },
                                    color: 'black',
                                    width: ScreenSize.horizontalBlockSize! * 21,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    ///// Divider
                    const Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Divider(
                        color: Color(0xFF333333),
                        thickness: 1,
                      ),
                    ),
                    ///// Language
                    SizedBox(height: ScreenSize.fSize_10()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: ScreenSize.fSize_24(),
                          width: ScreenSize.fSize_24(),
                          decoration: BoxDecoration(
                              color: const Color(0xFF333333),
                              borderRadius:
                                  BorderRadius.circular(ScreenSize.fSize_3())),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              "assets/image/Template Image/Resume 7 Image/world.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "LANGUAGES",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.fSize_17(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    Container(
                      width: ScreenSize.horizontalBlockSize! * 40,
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: ScreenSize.horizontalBlockSize! * 4,
                            width: ScreenSize.horizontalBlockSize! * 12,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  border: Border.all(
                                      color: const Color(0xFF333333))),
                              child: Center(
                                child: Text(
                                  "ENGLISH",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        ScreenSize.horizontalBlockSize! * 1.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: ScreenSize.horizontalBlockSize! * 4,
                            width: ScreenSize.horizontalBlockSize! * 12,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  border: Border.all(
                                      color: const Color(0xFF333333))),
                              child: Center(
                                child: Text(
                                  "SPANISH",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        ScreenSize.horizontalBlockSize! * 1.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: ScreenSize.horizontalBlockSize! * 4,
                            width: ScreenSize.horizontalBlockSize! * 12,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  border: Border.all(
                                      color: const Color(0xFF333333))),
                              child: Center(
                                child: Text(
                                  "FRENCH",
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        ScreenSize.horizontalBlockSize! * 1.8,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_6()),
                    ///// Divider
                    const Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Divider(
                        color: Color(0xFF333333),
                        thickness: 1,
                      ),
                    ),
                    ///// Hobbies
                    SizedBox(height: ScreenSize.fSize_8()),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: ScreenSize.fSize_24(),
                          width: ScreenSize.fSize_24(),
                          decoration: BoxDecoration(
                              color: const Color(0xFF333333),
                              borderRadius:
                                  BorderRadius.circular(ScreenSize.fSize_3())),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              "assets/image/Template Image/Resume 10 Image/hobbies.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "HOBBIES",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.fSize_17(),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Row(
                      children: [
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          // color: Colors.red,
                          child: Text(
                            "Book Reading",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          height: ScreenSize.horizontalBlockSize! * 2,
                          child: Resume4CustomSlider(
                            value: 50.0,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {
                              // setState(() {
                              print('Slider value: $value');
                              // });
                            },
                            color: 'black',
                            width: ScreenSize.horizontalBlockSize! * 21,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Row(
                      children: [
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          // color: Colors.red,
                          child: Text(
                            "Traveling",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          height: ScreenSize.horizontalBlockSize! * 2,
                          child: Resume4CustomSlider(
                            value: 50.0,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {
                              // setState(() {
                              print('Slider value: $value');
                              // });
                            },
                            color: 'black',
                            width: ScreenSize.horizontalBlockSize! * 21,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Row(
                      children: [
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          // color: Colors.red,
                          child: Text(
                            "Playing Chess",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 21,
                          height: ScreenSize.horizontalBlockSize! * 2,
                          child: Resume4CustomSlider(
                            value: 50.0,
                            min: 0.0,
                            max: 100.0,
                            onChanged: (value) {
                              // setState(() {
                              print('Slider value: $value');
                              // });
                            },
                            color: 'black',
                            width: ScreenSize.horizontalBlockSize! * 21,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_4()),
                    ///// Divider
                    const Padding(
                      padding: EdgeInsets.only(right: 9),
                      child: Divider(
                        color: Color(0xFF333333),
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ///// Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 45,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.fSize_24(),
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/education.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "EDUCATION",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_17(),
                  ),
                )
              ],
            ),
          ),
          // STANDFORD UNIVERSITY
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 50,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.schoolNameController.value
                    : education.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "STANFORD UNIVERSITY",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 54,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.degreeController.value
                    : education.value[0][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "MASTER DEGREE GRADUATE",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 58,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                  controller: education.value.isEmpty
                    ? textController.startDateController.value
                    : education.value[0][5] == "true"
                    ? textController.presentController.value
                    : education.value[0][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2011-2013",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // University of chicago
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 66,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.schoolNameController2.value
                    : education.value[1][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "UNIVERSITY OF CHICAGO",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 70,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                  controller: education.value.length < 2
                    ? textController.degreeController2.value
                    : education.value[1][1],
                  style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "BACHELOR DEGREE GRADUATE",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 74,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.startDateController.value
                    : education.value[1][5] == "true"
                    ? textController.presentController.value
                    : education.value[1][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2007-2010",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // Divider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 83,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 43,
              color: Colors.transparent,
              child: const Divider(
                color: Color(0xFF333333),
                thickness: 1,
              ),
            ),
          ),
          // References
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 90,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.fSize_24(),
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/group.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "REFERENCES",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_17(),
                  ),
                )
              ],
            ),
          ),
          // DARWIN B. MAGANA
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 96,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceName.value
                    : reference.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "DARWIN B. MAGANA",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 100,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 45,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceAddress.value
                    : reference.value[0][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "1964 Harley Brook Lane Johnstone, PA 15904",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 104,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceNumber.value
                    : reference.value[0][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tel: +1-970-533-3393",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 107.5,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceEmail.value
                    : reference.value[0][3],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email:www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // ROBERT J. BELVIN
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 117,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                ),
                controller: reference.value.length < 2
                    ? textController.referenceName2.value
                    : reference.value[1][0],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ROBERT J. BELVIN",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 121,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 45,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceAddress2.value
                    : reference.value[1][1],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "1283 Little Acres Lane Champaign, IL 61820",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 125,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceNumber2.value
                    : reference.value[1][2],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tel: +1-908-987-5103",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 128.5,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceEmail2.value
                    : reference.value[1][3],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email:www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // Divider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 140,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 43,
              color: Colors.transparent,
              child: const Divider(
                color: Color(0xFF333333),
                thickness: 1,
              ),
            ),
          ),
          // Work Experience
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 147,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.fSize_24(),
                  decoration: const BoxDecoration(
                    color: Color(0xFF333333),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/job.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Text(
                  "JOB EXPERIENCE",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_15(),
                  ),
                )
              ],
            ),
          ),
          //// Web Designer
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 151,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.isEmpty
                        ? textController.positionController.value
                        : workList.value[0][1],
                    style: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_10(),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "WEB DESIGNER",
                      hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_10(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_8()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                      controller: workList.value.isEmpty
                          ? textController.workstartDateController.value
                          : workList.value[0][5] == "true"
                          ? textController.workPresentController1.value
                          : workList.value[0][1],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "2020-Present",
                        hintStyle: GoogleFonts.openSans(
                          color: const Color(0xFF333333),
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
            top: ScreenSize.horizontalBlockSize! * 154,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.workCompanyController.value
                    : workList.value[0][0],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Creative Angery / Chicago",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 161,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.descriptionController.value
                    : workList.value[0][4],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          // Graphic Designer
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 169,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 2
                        ? textController.positionController2.value
                        : workList.value[1][1],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "GRAPHIC DESIGNER",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF333333),
                        fontSize: ScreenSize.horizontalBlockSize! * 2.5,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_17()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                        controller: workList.value.length < 2
                          ? textController.workstartDateController2.value
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
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 171.5,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                  controller: workList.value.length < 2
                    ? textController.workCompanyController2.value
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
            top: ScreenSize.horizontalBlockSize! * 178.5,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.descriptionController2.value
                    : workList.value[1][4],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          // Marketing manager
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 185,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 3
                        ? textController.positionController3.value
                        : workList.value[2][1],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "MARKETING MANAGER",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF333333),
                        fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_17()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 17,
                    color: Colors.transparent,
                    child: TextField(
                      controller: workList.value.length < 3
                          ? textController.positionController3.value
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
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 188,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.fSize_8(),
                ),
                controller: workList.value.length < 3
                    ? textController.workCompanyController3.value
                    : workList.value[2][0],
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
            top: ScreenSize.horizontalBlockSize! * 194,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                  controller: workList.value.length < 3
                    ? textController.descriptionController3.value
                    : workList.value[2][4],
                style: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          // Divider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 204,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 43,
              color: Colors.transparent,
              child: const Divider(
                color: Color(0xFF333333),
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  template11Preview() {
    List skill = [
      "Ux Design",
      "Ui Design",
      "User Research",
      "Design System",
      "User Research",
      "User Anaylsis",
    ];
    List professional = [
      "Ux Design",
      "Ui Design",
      "User Research",
      "Design System",
      "User Research",
    ];
    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      width: double.maxFinite,
      child: Stack(
        children: [
          Image.asset(
            "assets/image/Template Image/Resume 11 Image/Vector 7.png",
            scale: 3.5,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/image/Template Image/Resume 11 Image/Vector 8.png",
              scale: 3.1,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              "assets/image/Template Image/Resume 11 Image/Vector 8 1.png",
              scale: 3.1,
            ),
          ),
          // ClipPath(
          //   clipper: CustomShapeClipper(),
          //   child: Container(
          //     color: Colors.yellow,
          //     child: Image.asset(
          //       'assets/image/Template Image/Resume 1.png',
          //       // Replace with your image asset path
          //       width: 150, // Adjust the width and height as needed
          //       height: 150,
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          /*   Positioned(
                      left: ScreenSize.fSize_14(),
                      top: ScreenSize.fSize_30(),
                      child: Container(
                        height: ScreenSize.horizontalBlockSize! * 70,
                        width: ScreenSize.fSize_140(),

                        child: Image.asset(
                            "assets/image/Template Image/Resume 11 Image/Vector 9.png",
                            color: Colors.red,
                            fit: BoxFit.fill),
                      ),
                    ),*/
          Stack(
            children: [
              CustomPaint(
                painter: RPSCustomPainter(),
                child: Container(
                  width: 150,
                  height: 150,
                  // color: Colors.blue,
                ),
              ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.yellow,
              // )
            ],
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76,
            child: CustomPaint(
              painter: RPSCustomPainter2(),
              child: const SizedBox(
                width: 150,
                height: 150,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76,
            child: CustomPaint(
              painter: RPSCustomPainter3(),
              child: const SizedBox(
                width: 150,
                height: 150,
              ),
            ),
          ),
          //// Personal Skills
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 82,
            left: ScreenSize.fSize_15(),
            child: Text(
              "PERSONAL SKILLS",
              style: GoogleFonts.openSans(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 89,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 89.3,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 40,
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 90,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 40,
              width: ScreenSize.horizontalBlockSize! * 40,
              // color: const Color(0xFF38B86B),
              child: ListView.builder(
                itemCount: skill.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: ScreenSize.fSize_24(),
                        width: ScreenSize.horizontalBlockSize! * 21,
                        color: Colors.transparent,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: skill[index],
                            hintStyle: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          //// Professional Skills
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 132,
            left: ScreenSize.fSize_15(),
            child: Text(
              "PROFESSIONAL SKILLS",
              style: GoogleFonts.openSans(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 139,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 139.3,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 40,
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 140,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 40,
              width: ScreenSize.horizontalBlockSize! * 40,
              // color: const Color(0xFF38B86B),
              child: ListView.builder(
                itemCount: skill.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        height: ScreenSize.fSize_24(),
                        width: ScreenSize.horizontalBlockSize! * 21,
                        color: Colors.transparent,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: skill[index],
                            hintStyle: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          //// Achivements
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 182,
            left: ScreenSize.fSize_15(),
            child: Text(
              "ACHIVEMENT",
              style: GoogleFonts.openSans(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 188.5,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 188.75,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 40,
              color: const Color(0xFF38B86B),
            ),
          ),
          // 2010-2015
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 191,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 195,
            left: ScreenSize.fSize_15(),
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 37,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "USER EXPERIENCE DESIGN",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF38B86B),
                    fontWeight: FontWeight.w600,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: ScreenSize.horizontalBlockSize! * 200,
              left: ScreenSize.fSize_15(),
              child: Container(
                height: ScreenSize.fSize_28(),
                width: ScreenSize.horizontalBlockSize! * 37,
                color: Colors.transparent,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintMaxLines: 2,
                    hintText:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                    hintStyle: GoogleFonts.openSans(
                      color: Colors.white,
                      // color: const Color(0xFF38B86B),
                      fontSize: ScreenSize.fSize_10(),
                    ),
                  ),
                ),
              )),
          // Jhon Smith
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 8,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_28(),
              width: ScreenSize.horizontalBlockSize! * 35,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "JHON SMITH",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.horizontalBlockSize! * 4.5,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 12.5,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.fSize_15(),
              width: ScreenSize.horizontalBlockSize! * 35,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "SENIOR UI / UX DESIGNER",
                  hintStyle: GoogleFonts.openSans(
                    letterSpacing: 0.8,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 18,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 18.3,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 44,
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 21,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 15,
              width: ScreenSize.horizontalBlockSize! * 44,
              // color: Colors.red,
              child: TextField(
                maxLines: 2,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintMaxLines: 4,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          //// Number
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 38,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_18(),
                  width: ScreenSize.fSize_18(),
                  decoration: BoxDecoration(
                      color: const Color(0xFF38B86B),
                      borderRadius:
                          BorderRadius.circular(ScreenSize.fSize_4())),
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.phone,
                        size: ScreenSize.fSize_11(),
                        color: Colors.white,
                      )),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    height: ScreenSize.fSize_15(),
                    width: ScreenSize.horizontalBlockSize! * 35,
                    // color: Colors.red,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "+123 4567 8910",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.horizontalBlockSize! * 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Mail
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 47,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_18(),
                  width: ScreenSize.fSize_18(),
                  decoration: BoxDecoration(
                      color: const Color(0xFF38B86B),
                      borderRadius:
                          BorderRadius.circular(ScreenSize.fSize_4())),
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.mail,
                        size: ScreenSize.fSize_11(),
                        color: Colors.white,
                      )),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    height: ScreenSize.fSize_15(),
                    width: ScreenSize.horizontalBlockSize! * 35,
                    // color: Colors.red,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "example@mail.com",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.horizontalBlockSize! * 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Address
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 56,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: ScreenSize.fSize_18(),
                  width: ScreenSize.fSize_18(),
                  decoration: BoxDecoration(
                      color: const Color(0xFF38B86B),
                      borderRadius:
                          BorderRadius.circular(ScreenSize.fSize_4())),
                  child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Icons.location_on,
                        size: ScreenSize.fSize_11(),
                        color: Colors.white,
                      )),
                ),
                SizedBox(width: ScreenSize.fSize_8()),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Container(
                    height: ScreenSize.fSize_15(),
                    width: ScreenSize.horizontalBlockSize! * 35,
                    // color: Colors.red,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "123 Road Address, Level-5, NYC",
                        hintStyle: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenSize.horizontalBlockSize! * 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Education and qulification
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 68,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "EDUCATION AND QUALIFICATION",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w800,
                color: const Color(0xFF38B86B),
                fontSize: ScreenSize.fSize_8(),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 72,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 72.3,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 44,
              color: const Color(0xFF38B86B),
            ),
          ),
          //// Vertical Container
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 77,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
                height: ScreenSize.horizontalBlockSize! * 32,
                width: ScreenSize.fSize_2(),
                color: const Color(0xFF38B86B)),
          ),
          //// Vertical Container 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 134,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
                height: ScreenSize.horizontalBlockSize! * 32,
                width: ScreenSize.fSize_2(),
                color: const Color(0xFF38B86B)),
          ),
          //// Work experience
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 124,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "WORK EXPERIENCE",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w800,
                color: const Color(0xFF38B86B),
                fontSize: ScreenSize.fSize_10(),
              ),
            ),
          ),
          //// Reference
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 177,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "REFERENCES",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w800,
                color: const Color(0xFF38B86B),
                fontSize: ScreenSize.fSize_10(),
              ),
            ),
          ),
          //// Jhon Deo.
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 187,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "DRAWIN B. MAGANA",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 187,
            left: ScreenSize.horizontalBlockSize! * 74,
            child: Text(
              "DRAWIN B. MAGANA",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          ///// Senior Product Manager
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 189,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "Senior Product Manager",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 189,
            left: ScreenSize.horizontalBlockSize! * 74,
            child: Text(
              "Senior Product Manager",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          ///// Phone Number
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 191,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "P:+123 4567 8910",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 191,
            left: ScreenSize.horizontalBlockSize! * 74,
            child: Text(
              "P:+123 4567 8910",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          //// Mail
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 193,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Text(
              "E:example@mailname.com",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 193,
            left: ScreenSize.horizontalBlockSize! * 74,
            child: Text(
              "E:example@mailname.com",
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 1.5,
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 187,
            left: ScreenSize.horizontalBlockSize! * 69.4,
            child: SizedBox(
              height: ScreenSize.horizontalBlockSize! * 8,
              // width: ScreenSize.fSize_10(),
              child: const VerticalDivider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
          ),
          ////// COntainer
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 182,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 182.3,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 44,
              color: const Color(0xFF38B86B),
            ),
          ),
          ////////
          //// W.E 2010-2015 2.1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 131.5,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 134.5,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 138,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          //// W.E 2010-2015 2.2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 147,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 149.7,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 153,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          //// W.E 2010-2015 3.1
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 163.5,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 166,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 169,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          ////////////////////////////////
          //// Work Container
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 129,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.4,
              width: ScreenSize.fSize_40(),
              color: const Color(0xFF38B86B),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 129.3,
            left: ScreenSize.horizontalBlockSize! * 50,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 0.2,
              width: ScreenSize.horizontalBlockSize! * 44,
              color: const Color(0xFF38B86B),
            ),
          ),
          // 2010-2015
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 79,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 82.8,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          ////// 2010-2015 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 92,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 94.7,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 98,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          ////// 2010-2015 3
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 108,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 17,
              color: Colors.transparent,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2010-2015",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 110.5,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_14(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ADD YOUR TITLE TEXT HERE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 114,
            left: ScreenSize.horizontalBlockSize! * 54,
            child: Container(
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              // color: Colors.red,
              child: TextField(
                decoration: InputDecoration(
                  hintMaxLines: 2,
                  border: InputBorder.none,
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                ),
              ),
            ),
          ),
          /////// Container Dotes
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76.3,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 92.5,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 108.7,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
          /////// Container Dotes 2
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 132,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 148.2,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 164.4,
            left: ScreenSize.horizontalBlockSize! * 49.4,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 2,
              width: ScreenSize.horizontalBlockSize! * 2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF38B86B),
                    width: 2,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  template12Preview() {
    List skills = [
      "Adobe Photoshop",
      "Adobe Illustrator",
      "Microsoft PowerPoint",
      "Microsoft Word",
      "HTML-S/CSS-3",
    ];
    List language = [
      "ENGLISH",
      "SPANISH",
      "FRENCH",
    ];
    List hobbies = [
      "Book Reading",
      "Travelling",
      "Playing Chess",
    ];
    return Stack(
      children: [
        //// Noel Taylor
        Positioned(
          top: ScreenSize.fSize_20(),
          left: ScreenSize.fSize_10(),
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_60(),
            width: ScreenSize.horizontalBlockSize! * 30,
            child: TextField(
              maxLines: 2,
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: ScreenSize.fSize_18(),
                fontWeight: FontWeight.w800,
              ),
              controller: textController.nameController.value,
              decoration: InputDecoration(
                hintMaxLines: 2,
                border: InputBorder.none,
                hintText: "NOEL TAYLOR",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_20(),
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 18,
          left: ScreenSize.fSize_10(),
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_18(),
            width: ScreenSize.horizontalBlockSize! * 35,
            child: TextField(
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontSize: ScreenSize.horizontalBlockSize! * 2.7,
              ),
              controller: textController.professionController.value,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "GRAPHIC & WEB DESIGNER",
                hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
        //// Left Container
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: ScreenSize.horizontalBlockSize! * 200,
            width: ScreenSize.horizontalBlockSize! * 40,
            color: const Color(0xFF0A7994),
            child: Column(
              children: [
                SizedBox(height: ScreenSize.fSize_20()),
                Padding(
                  padding: EdgeInsets.only(
                    left: ScreenSize.horizontalBlockSize! * 14,
                  ),
                  child: Container(
                    // color: Colors.green,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: ScreenSize.fSize_20(),
                              width: ScreenSize.fSize_20(),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: Icon(
                                Icons.person_rounded,
                                color: Colors.white,
                                size: ScreenSize.fSize_15(),
                              ),
                            ),
                            SizedBox(width: ScreenSize.fSize_6()),
                            Text(
                              "CONTACT",
                              style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: ScreenSize.fSize_13()),
                            ),
                          ],
                        ),
                        SizedBox(height: ScreenSize.fSize_13()),
                        ///// Phone Number
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenSize.fSize_15(),
                              width: ScreenSize.fSize_15(),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: Icon(
                                Icons.phone_in_talk,
                                color: Colors.white,
                                size: ScreenSize.horizontalBlockSize! * 2.4,
                              ),
                            ),
                            SizedBox(width: ScreenSize.fSize_4()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.red,
                                  height: ScreenSize.fSize_12(),
                                  width: ScreenSize.fSize_70(),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "+1-718-310-5588",
                                      hintStyle: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: ScreenSize.fSize_8()),
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.red,
                                  height: ScreenSize.fSize_12(),
                                  width: ScreenSize.fSize_70(),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "+1-718-310-5588",
                                      hintStyle: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: ScreenSize.fSize_8()),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: ScreenSize.fSize_10()),
                        ///// Website
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenSize.fSize_15(),
                              width: ScreenSize.fSize_15(),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: Icon(
                                Icons.language_outlined,
                                color: Colors.white,
                                size: ScreenSize.horizontalBlockSize! * 2.7,
                              ),
                            ),
                            SizedBox(width: ScreenSize.fSize_4()),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // color: Colors.blue,
                                  height: ScreenSize.fSize_12(),
                                  width: ScreenSize.fSize_70(),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "www.yourwebsite@gmail.com",
                                      hintStyle: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: ScreenSize.fSize_8()),
                                    ),
                                  ),
                                ),
                                Container(
                                  // color: Colors.blue,
                                  height: ScreenSize.fSize_12(),
                                  width: ScreenSize.fSize_70(),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "yourinfo@gmail.com",
                                      hintStyle: GoogleFonts.openSans(
                                          color: Colors.white,
                                          fontSize: ScreenSize.fSize_8()),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: ScreenSize.fSize_10()),
                        ///// Address
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenSize.fSize_15(),
                              width: ScreenSize.fSize_15(),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: ScreenSize.horizontalBlockSize! * 2.7,
                              ),
                            ),
                            SizedBox(width: ScreenSize.fSize_4()),
                            Container(
                              // color: Colors.black,
                              height: ScreenSize.fSize_20(),
                              width: ScreenSize.fSize_70(),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintMaxLines: 2,
                                  border: InputBorder.none,
                                  hintText:
                                      "769 Prudence Street lincoln Park, MI 48146",
                                  hintStyle: GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: ScreenSize.fSize_8()),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ///// About Me
                Padding(
                  padding: EdgeInsets.only(
                      top: ScreenSize.fSize_30(), left: ScreenSize.fSize_10()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: ScreenSize.fSize_20(),
                            width: ScreenSize.fSize_20(),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: Icon(
                              Icons.person_rounded,
                              color: Colors.white,
                              size: ScreenSize.fSize_15(),
                            ),
                          ),
                          SizedBox(width: ScreenSize.fSize_8()),
                          Text(
                            "ABOUT ME",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_12(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_18()),
                      Container(
                        // color: Colors.red,
                        height: ScreenSize.horizontalBlockSize! * 17,
                        width: ScreenSize.horizontalBlockSize! * 43,
                        child: TextField(
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                      Container(
                        // color: Colors.red,
                        height: ScreenSize.horizontalBlockSize! * 12,
                        width: ScreenSize.horizontalBlockSize! * 43,
                        child: TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                            ),
                          ),
                        ),
                      ),
                      ///// Divider
                      const Padding(
                        padding: EdgeInsets.only(right: 9),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      //// Skills
                      SizedBox(height: ScreenSize.fSize_10()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: ScreenSize.fSize_20(),
                            width: ScreenSize.fSize_20(),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Image.asset(
                                "assets/image/Template Image/Resume 7 Image/skill.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: ScreenSize.fSize_8()),
                          Text(
                            "SKILLS",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_12(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_13()),
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 27,
                        width: ScreenSize.horizontalBlockSize! * 41,
                        // color: Colors.red,
                        child: ListView.builder(
                          itemCount: skills.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: ScreenSize.fSize_10()),
                              child: Row(
                                children: [
                                  Container(
                                    // height: ScreenSize.fSize_24(),
                                    width: ScreenSize.horizontalBlockSize! * 17,
                                    color: Colors.transparent,
                                    child: Text(skills[index],
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.white,
                                          fontSize:
                                              ScreenSize.horizontalBlockSize! *
                                                  1.8,
                                        )),
                                    // child: TextField(
                                    //   style: GoogleFonts.openSans(
                                    //     fontWeight: FontWeight.w800,
                                    //     color: Colors.white,
                                    //     fontSize:
                                    //         ScreenSize.horizontalBlockSize! * 1.8,
                                    //   ),
                                    //   decoration: InputDecoration(
                                    //     border: InputBorder.none,
                                    //     hintText: skills[index],
                                    //     hintStyle: GoogleFonts.openSans(
                                    //       fontWeight: FontWeight.w800,
                                    //       color: Colors.white,
                                    //       fontSize:
                                    //           ScreenSize.horizontalBlockSize! *
                                    //               1.8,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 20,
                                    height: ScreenSize.horizontalBlockSize! * 2,
                                    child: Resume3CustomSlider(
                                      value: 50.0,
                                      min: 0.0,
                                      max: 100.0,
                                      onChanged: (value) {
                                        // setState(() {
                                        print('Slider value: $value');
                                        // });
                                      },
                                      color: "white",
                                      width:
                                          ScreenSize.horizontalBlockSize! * 21,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      ///// Divider
                      const Padding(
                        padding: EdgeInsets.only(right: 9),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      ///// Language
                      SizedBox(height: ScreenSize.fSize_10()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: ScreenSize.fSize_20(),
                            width: ScreenSize.fSize_20(),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/image/Template Image/Resume 7 Image/world.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: ScreenSize.fSize_8()),
                          Text(
                            "LANGUAGES",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_12(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_12()),
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 7,
                        width: ScreenSize.horizontalBlockSize! * 41,
                        color: Colors.transparent,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: language.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScreenSize.fSize_100())),
                                color: Colors.white,
                                // border: Border.all(
                                //     color: const Color(0xFF333333)),
                              ),
                              child: Center(
                                child: Text(
                                  language[index],
                                  style: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF0A7994),
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! *
                                              2.8),
                                ),
                              ),
                              /* child: Center(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: skills[index],
                                        hintStyle: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w800,
                                          fontSize: ScreenSize
                                                  .horizontalBlockSize! *
                                              1.8,
                                        ),
                                      ),
                                    ),
                                  ),*/
                            );
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.4,
                            mainAxisSpacing: 10,
                            crossAxisCount: 1,
                          ),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_10()),
                      ///// Divider
                      const Padding(
                        padding: EdgeInsets.only(right: 9),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      ///// Hobbies
                      SizedBox(height: ScreenSize.fSize_12()),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: ScreenSize.fSize_20(),
                            width: ScreenSize.fSize_20(),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.asset(
                                "assets/image/Template Image/Resume 10 Image/hobbies.png",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: ScreenSize.fSize_8()),
                          Text(
                            "HOBBIES",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_12(),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 15.5,
                        width: ScreenSize.horizontalBlockSize! * 41,
                        color: Colors.transparent,
                        child: ListView.builder(
                          itemCount: hobbies.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  bottom: ScreenSize.fSize_10()),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 15,
                                    // color: Colors.red,
                                    child: Text(
                                      hobbies[index],
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                        fontSize:
                                            ScreenSize.horizontalBlockSize! *
                                                1.8,
                                      ),
                                    ),
                                    // child: TextField(
                                    //   decoration: InputDecoration(
                                    //     border: InputBorder.none,
                                    //     hintText: hobbies[index],
                                    //     hintStyle: GoogleFonts.openSans(
                                    //       fontWeight: FontWeight.w800,
                                    //       color: Colors.white,
                                    //       fontSize:
                                    //           ScreenSize.horizontalBlockSize! *
                                    //               1.8,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 21,
                                    height: ScreenSize.horizontalBlockSize! * 2,
                                    child: Resume3CustomSlider(
                                      value: 50.0,
                                      min: 0.0,
                                      max: 100.0,
                                      onChanged: (value) {
                                        // setState(() {
                                        print('Slider value: $value');
                                        // });
                                      },
                                      color: "white",
                                      width:
                                          ScreenSize.horizontalBlockSize! * 21,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      ///// Divider
                      const Padding(
                        padding: EdgeInsets.only(right: 9),
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //// Image
        Positioned(
          top: ScreenSize.fSize_3(),
          left: ScreenSize.horizontalBlockSize! * 37,
          child: textController.profileImage != null
              ? Container(
                  height: ScreenSize.horizontalBlockSize! * 33,
                  width: ScreenSize.horizontalBlockSize! * 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF333333),
                        width: 5,
                      ),
                      image: DecorationImage(
                          image: FileImage(textController.profileImage),
                          fit: BoxFit.cover)),
                )
              : Container(
                  height: ScreenSize.horizontalBlockSize! * 33,
                  width: ScreenSize.horizontalBlockSize! * 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFF333333),
                        width: 5,
                      ),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg",
                          ),
                          fit: BoxFit.cover)),
                ),
        ),
        //// Education
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 40,
          left: ScreenSize.fSize_10(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.fSize_24(),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF333333), width: 2),
                    shape: BoxShape.circle),
                child: Image.asset(
                  "assets/image/Template Image/Resume 10 Image/education.png",
                  color: const Color(0xFF0A7994),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_8()),
              Text(
                "EDUCATION",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_17(),
                ),
              )
            ],
          ),
        ),
        // STANDFORD UNIVERSITY
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 50,
          left: ScreenSize.fSize_10(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 22,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "STANFORD UNIVERSITY",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.7,
                    ),
                  ),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_24()),
              Container(
                // color: Colors.green,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 22,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "UNIVERSITY OF CHICAGO",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 52.5,
          left: ScreenSize.fSize_10(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 22,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "MASTER DEGREE GRADUATE",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.6,
                    ),
                  ),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_24()),
              Container(
                // color: Colors.green,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 22,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "BACHELOR DEGREE GRADUATE",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: ScreenSize.horizontalBlockSize! * 55,
          left: ScreenSize.fSize_10(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 22,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "2011-2013",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF0A7994),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.6,
                    ),
                  ),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_24()),
              Container(
                // color: Colors.green,
                height: ScreenSize.fSize_12(),
                width: ScreenSize.horizontalBlockSize! * 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "2007-2010",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF0A7994),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 1.6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //// Divider
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 59,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 50,
            child: const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ),
        //// References
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 65.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.fSize_24(),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF333333), width: 2),
                    shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(3.2),
                  child: Image.asset(
                    "assets/image/Template Image/Resume 10 Image/group.png",
                    color: const Color(0xFF0A7994),
                  ),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_8()),
              Text(
                "REFERENCES",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_17(),
                ),
              )
            ],
          ),
        ),
        // DARWIN B. MAGANA
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 77,
          child: Container(
            color: Colors.transparent,
            height: ScreenSize.fSize_17(),
            width: ScreenSize.horizontalBlockSize! * 40,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "DARWIN B. MAGANA",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 79,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "1964 Harley Brook Lane Johnstone, PA 15904",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 82.5,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tel:+1-970-533-3393",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 85.5,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email:www.yourwesite.com",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        // ROBERT J. Belvin
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 95,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_17(),
            width: ScreenSize.horizontalBlockSize! * 40,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ROBERT J. BELVIN",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 97,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "1283 Little Acres Lane Champaign, IL 61820",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 103.5,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email:www.yourwebsite.com",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 100.5,
          child: Container(
            // color: Colors.red,
            height: ScreenSize.fSize_20(),
            width: ScreenSize.horizontalBlockSize! * 50,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tel:+1-908-987-5130",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                ),
              ),
            ),
          ),
        ),
        //// Divider
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 110,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 50,
            child: const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ),
        //// Job Experience
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 118,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.fSize_24(),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFF333333), width: 2),
                    shape: BoxShape.circle),
                child: Padding(
                  padding: const EdgeInsets.all(3.5),
                  child: Image.asset(
                    "assets/image/Template Image/Resume 10 Image/job.png",
                    color: const Color(0xFF0A7994),
                  ),
                ),
              ),
              SizedBox(width: ScreenSize.fSize_8()),
              Text(
                "JOB EXPERIENCE",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_17(),
                ),
              )
            ],
          ),
        ),
        //// Web Designer
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 127,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 27,
                // color: Colors.red,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "WEB DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.fSize_10(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_28()),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  // color: Colors.red,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2020-Present",
                      hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
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
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 130,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Creative Angery / Chicago",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 139,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 50,
            // color: Colors.red,
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        //// Graphic Designer
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 146,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 27,
                // color: Colors.red,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "GRAPHIC DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: ScreenSize.horizontalBlockSize! * 11),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  // color: Colors.red,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2020-2020",
                      hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
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
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 149,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Creative Market / Chicago",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 159,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 50,
            // color: Colors.red,
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        //// Marketing Manager
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 168,
          child: Row(
            children: [
              Container(
                height: ScreenSize.fSize_24(),
                width: ScreenSize.horizontalBlockSize! * 29,
                // color: Colors.red,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "MARKETING MANAGER",
                    hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 2.4,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: ScreenSize.horizontalBlockSize! * 9),
                child: Container(
                  height: ScreenSize.fSize_24(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  // color: Colors.red,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2013-2015",
                      hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
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
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 171,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 28,
            color: Colors.transparent,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Manufachuring Agency / NJ",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 180,
          child: Container(
            height: ScreenSize.fSize_24(),
            width: ScreenSize.horizontalBlockSize! * 50,
            // color: Colors.red,
            child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type",
                hintStyle: GoogleFonts.openSans(
                  color: const Color(0xFF333333),
                  fontSize: ScreenSize.fSize_8(),
                ),
              ),
            ),
          ),
        ),
        //// Divider
        Positioned(
          left: ScreenSize.fSize_10(),
          top: ScreenSize.horizontalBlockSize! * 191.5,
          child: Container(
            width: ScreenSize.horizontalBlockSize! * 50,
            child: const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  template13Preview(BuildContext context, var value, var ontap) {
    List language = [
      "English -",
      "Spanish -",
      "Arabic -",
      "French -",
    ];

    List skills = [
      "Photoshop",
      "Illustrator",
      "InDesign",
      "Premiere Pro",
    ];

    List langLevel = [
      "Native",
      "Professional",
      "Basic",
      "Basic",
    ];
    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      child: Stack(
        children: [
          //// Address
          Positioned(
            left: ScreenSize.fSize_12(),
            child: Container(
              color: const Color(0xFFFFC803),
              height: ScreenSize.fSize_70(),
              width: ScreenSize.fSize_34(),
              child: Padding(
                padding: EdgeInsets.only(top: ScreenSize.fSize_20()),
                child: const Icon(
                  Icons.location_on,
                  color: Color(0xFF363636),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 11,
            left: ScreenSize.fSize_55(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_18(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                controller: textController.professionController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "123 Your Address Here- 576",
                  hintStyle: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          //// Name
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 28,
            left: ScreenSize.fSize_10(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              child: TextField(
                maxLines: 1,
                style: GoogleFonts.openSans(
                  color: const Color(0xFF363636),
                  fontSize: ScreenSize.fSize_20(),
                ),
                controller: textController.nameController.value,
                decoration: InputDecoration(
                  hintMaxLines: 1,
                  border: InputBorder.none,
                  hintText: "EMMA",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF363636),
                    fontSize: ScreenSize.fSize_20(),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 34,
            left: ScreenSize.fSize_10(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_24(),
              width: ScreenSize.horizontalBlockSize! * 35,
              child: TextField(
                maxLines: 1,
                style: GoogleFonts.openSans(
                  color: const Color(0xFF363636),
                  fontSize: ScreenSize.fSize_20(),
                  fontWeight: FontWeight.w700,
                ),
                controller: textController.nameController.value,
                decoration: InputDecoration(
                  hintMaxLines: 1,
                  border: InputBorder.none,
                  hintText: "ANDERSON",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF363636),
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          ///// Image
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 6,
            left: ScreenSize.horizontalBlockSize! * 13,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.horizontalBlockSize! * 38,
              // width: ScreenSize.horizontalBlockSize! * 60,
              child: Image.asset(
                "assets/image/Template Image/Resume 13 Image/Group 136.png",
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 57.5,
            top: ScreenSize.horizontalBlockSize! * 7.5,
            child: textController.profileImage != null
                ? Container(
                    height: ScreenSize.horizontalBlockSize! * 35,
                    width: ScreenSize.horizontalBlockSize! * 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: FileImage(textController.profileImage),
                          fit: BoxFit.cover),
                      color: Colors.red,
                    ),
                  )
                : Container(
                    height: ScreenSize.horizontalBlockSize! * 35,
                    width: ScreenSize.horizontalBlockSize! * 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://artriva.com/media/k2/items/cache/c889234799e865bbe90cee71f6cd2e53_XL.jpg",
                          ),
                          fit: BoxFit.cover),
                      color: Colors.red,
                    ),
                  ),
          ),
          ///// Ui & Ux Designer
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 40,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.fSize_20(),
              width: ScreenSize.horizontalBlockSize! * 37,
              color: const Color(0xFF363636),
              child: Padding(
                padding: EdgeInsets.only(
                    right: ScreenSize.fSize_4(), left: ScreenSize.fSize_4()),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "UI & UX DESIGNER",
                    hintStyle: GoogleFonts.openSans(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: ScreenSize.fSize_10(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //// Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 52,
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 120,
              width: ScreenSize.horizontalBlockSize! * 37,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFF363636),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: ScreenSize.fSize_8()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: ScreenSize.fSize_18()),
                    Text(
                      "EDUCATION",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: ScreenSize.fSize_8()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.horizontalBlockSize! * 32,
                      color: const Color(0xFFE2E2E2),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: ScreenSize.horizontalBlockSize! * 25),
                        child: Container(
                          height: ScreenSize.fSize_2(),
                          color: const Color(0xFF363636),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_17()),
                    //// Enter Your Degree Name
                    Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_20(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ENTER YOUR Degree Name",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenSize.horizontalBlockSize! * 2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Name Of Your University / Location",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2014-2016",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.fSize_10(),
                    ),
                    //// Entere your Degree and location
                    Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_20(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ENTER YOUR Degree Name",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenSize.horizontalBlockSize! * 2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Name Of Your University / Location",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2014-2016",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    //// Language
                    Text(
                      "LANGUAGE",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: ScreenSize.fSize_8()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.horizontalBlockSize! * 32,
                      color: const Color(0xFFE2E2E2),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: ScreenSize.horizontalBlockSize! * 25),
                        child: Container(
                          height: ScreenSize.fSize_2(),
                          color: const Color(0xFF363636),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_17()),
                    Container(
                      height: ScreenSize.horizontalBlockSize! * 20,
                      width: ScreenSize.horizontalBlockSize! * 32,
                      // color: Colors.red,
                      child: ListView.builder(
                        itemCount: language.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                height: ScreenSize.fSize_17(),
                                width: ScreenSize.horizontalBlockSize! * 9,
                                // color: Colors.red,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: language[index],
                                    hintStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w800,
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! * 1.8,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: ScreenSize.fSize_17(),
                                width: ScreenSize.horizontalBlockSize! * 15,
                                // color: Colors.red,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: langLevel[index],
                                    hintStyle: GoogleFonts.openSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          ScreenSize.horizontalBlockSize! * 1.8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_20()),
                    //// References
                    Text(
                      "REFERENCE",
                      style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: ScreenSize.fSize_8()),
                    Container(
                      height: ScreenSize.fSize_2(),
                      width: ScreenSize.horizontalBlockSize! * 32,
                      color: const Color(0xFFE2E2E2),
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: ScreenSize.horizontalBlockSize! * 25),
                        child: Container(
                          height: ScreenSize.fSize_2(),
                          color: const Color(0xFF363636),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_17()),
                    //// Micheal Williams
                    Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_20(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Micheal Williams",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: ScreenSize.horizontalBlockSize! * 2,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Company Name / Location",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "P:+0000 1234 5678",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_12(),
                      width: ScreenSize.horizontalBlockSize! * 33,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "E:info@mailaddress.com",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_8(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: ScreenSize.fSize_10()),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: ScreenSize.horizontalBlockSize! * 34,
                width: ScreenSize.fSize_34(),
                color: const Color(0xFFFFC803),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_10()),
                    Icon(
                      Icons.phone,
                      size: ScreenSize.fSize_13(),
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Icon(
                      Icons.mail,
                      size: ScreenSize.fSize_13(),
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Icon(
                      Icons.language,
                      size: ScreenSize.fSize_13(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 179,
            left: ScreenSize.fSize_55(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_12(),
              width: ScreenSize.horizontalBlockSize! * 33,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "+0000 1234 5678",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 185.5,
            left: ScreenSize.fSize_55(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_12(),
              width: ScreenSize.horizontalBlockSize! * 33,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "info@mailaddress.com",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 192,
            left: ScreenSize.fSize_55(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_12(),
              width: ScreenSize.horizontalBlockSize! * 33,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.fSize_10(),
                  ),
                ),
              ),
            ),
          ),
          //// Work Experience
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 55,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_50(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WORK EXPERIENCE",
                    style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: ScreenSize.fSize_8()),
                  Container(
                    height: ScreenSize.fSize_2(),
                    width: ScreenSize.horizontalBlockSize! * 50,
                    color: const Color(0xFFE2E2E2),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: ScreenSize.horizontalBlockSize! * 41),
                      child: Container(
                        height: ScreenSize.fSize_2(),
                        color: const Color(0xFF363636),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //// Company Name 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Company Name",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.fSize_10()),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Entere Your Job Position",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Location",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.horizontalBlockSize! * 2.5),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "From 2020-Present",
                          hintStyle: GoogleFonts.openSans(
                            // fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_80(), top: ScreenSize.fSize_4()),
                  child: Container(
                    // color: Colors.red,
                    height: ScreenSize.horizontalBlockSize! * 10,
                    width: ScreenSize.horizontalBlockSize! * 29.5,
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        hintStyle: GoogleFonts.openSans(
                          color: const Color(0xFF333333),
                          fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Company Name 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Company Name",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.fSize_10()),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Entere Your Job Position",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Location",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.horizontalBlockSize! * 2.5),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "From 2018-2020",
                          hintStyle: GoogleFonts.openSans(
                            // fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_80(), top: ScreenSize.fSize_4()),
                  child: Container(
                    // color: Colors.red,
                    height: ScreenSize.horizontalBlockSize! * 10,
                    width: ScreenSize.horizontalBlockSize! * 29.5,
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        hintStyle: GoogleFonts.openSans(
                          color: const Color(0xFF333333),
                          fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Company Name 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Company Name",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.fSize_10()),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Entere Your Job Position",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 18,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Location",
                          hintStyle: GoogleFonts.openSans(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: ScreenSize.horizontalBlockSize! * 2.5),
                    Container(
                      // color: Colors.red,
                      height: ScreenSize.horizontalBlockSize! * 4,
                      width: ScreenSize.horizontalBlockSize! * 25,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "From 2016-2018",
                          hintStyle: GoogleFonts.openSans(
                            // fontWeight: FontWeight.w500,
                            color: const Color(0xFF333333),
                            fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenSize.fSize_80(), top: ScreenSize.fSize_4()),
                  child: Container(
                    // color: Colors.red,
                    height: ScreenSize.horizontalBlockSize! * 10,
                    width: ScreenSize.horizontalBlockSize! * 29.5,
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        hintStyle: GoogleFonts.openSans(
                          color: const Color(0xFF333333),
                          fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //// Professional Skills
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 45,
            top: ScreenSize.horizontalBlockSize! * 145,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_50(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PROFESSIONAL SKILLS",
                    style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: ScreenSize.fSize_8()),
                  Container(
                    height: ScreenSize.fSize_2(),
                    width: ScreenSize.horizontalBlockSize! * 50,
                    color: const Color(0xFFE2E2E2),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: ScreenSize.horizontalBlockSize! * 41),
                      child: Container(
                        height: ScreenSize.fSize_2(),
                        color: const Color(0xFF363636),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 55,
            top: ScreenSize.horizontalBlockSize! * 155,
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 43,
              width: ScreenSize.horizontalBlockSize! * 40,
              // color: Colors.green,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: ScreenSize.fSize_17(),
                        width: ScreenSize.horizontalBlockSize! * 13,
                        // color: Colors.red,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: skills[index],
                            hintStyle: GoogleFonts.openSans(
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.horizontalBlockSize! * 1.8,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: ScreenSize.fSize_6()),
                        child: Container(
                            height: ScreenSize.fSize_17(),
                            width: ScreenSize.horizontalBlockSize! * 55,
                            // color: Colors.blue,
                            child: SliderTheme(
                              data: const SliderThemeData(
                                thumbColor: Colors.black,
                                trackShape: RectangularSliderTrackShape(),
                                inactiveTrackColor: Colors.grey,
                                trackHeight: 5,
                                activeTrackColor: Colors.black,
                                thumbShape: RectSliderThumbShape(),
                              ),
                              child: Slider(
                                value: value,
                                max: 100,
                                onChanged: ontap,
                              ),
                            )),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RectSliderThumbShape extends SliderComponentShape {
  const RectSliderThumbShape({
    this.enabledThumbRadius = 5.0,
    this.disabledThumbRadius,
    this.elevation = 1.0,
    this.pressedElevation = 6.0,
  });

  final double enabledThumbRadius;
  final double? disabledThumbRadius;

  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;
  final double elevation;
  final double pressedElevation;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled == true ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    final Canvas canvas = context.canvas;
    final Tween<double> radiusTween = Tween<double>(
      begin: _disabledThumbRadius,
      end: enabledThumbRadius,
    );
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final Color color = colorTween.evaluate(enableAnimation)!;
    final double radius = radiusTween.evaluate(enableAnimation);

    final Tween<double> elevationTween = Tween<double>(
      begin: elevation,
      end: pressedElevation,
    );

    final double evaluatedElevation =
        elevationTween.evaluate(activationAnimation);
    final Path path = Path()
      ..addArc(
          Rect.fromCenter(
              center: center, width: 2 * radius, height: 2 * radius),
          0,
          math.pi * 2);

    bool paintShadows = true;
    assert(() {
      if (debugDisableShadows) {
        paintShadows = false;
      }
      return true;
    }());

    if (paintShadows) {
      canvas.drawShadow(path, Colors.black, evaluatedElevation, true);
    }

    // Use drawRect instead of drawCircle
    canvas.drawRect(
      Rect.fromCircle(center: center, radius: radius),
      Paint()..color = color,
    );
  }
}
