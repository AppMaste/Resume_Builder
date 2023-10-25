// ignore_for_file: invalid_use_of_protected_member, unnecessary_null_comparison

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../pages/Create Resume/Sub Screen/Education Screen/Add Education Details Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Hobbies Screen/Add Hobbies Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Known Language/Known Language Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Objective Screen/Object Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Personal information Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Reference Screen/Add Reference Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Skills Screen/Add Skills Screen.dart';
import '../../../pages/Create Resume/Sub Screen/Work Experience Screen/Add Work Experience Screen.dart';
import '../../../utils/Resume Slider.dart';
import '../../../utils/color.dart';
import '../../../utils/style.dart';
import '../../../widgets/features/TextController.dart';
import '../../../widgets/global/MediaQuery/size.dart';

TostController tostController = Get.put(TostController());

class TostController extends GetxController {
  successTost() {
    return Fluttertoast.showToast(
        msg: "Successfully saved",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: appColorController.boxColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
  errorTost() {
    return Fluttertoast.showToast(
        msg: "Please Fill First",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  template2Preview() {
    log("messageeeeeeeeeee $hobbies");
    // var mixController = TextEditingController(text: "${education[0][2]}");
    // var language = [
    //   "ENGLISH",
    //   "SPANISH",
    //   "FRENCH",
    //   "GERMAN",
    // ].obs;
    // var hobbies = [
    //   "READING BOOKS",
    //   "TRAVELING",
    //   "PLAYING CHESS",
    // ].obs;

    return Container(
      height: ScreenSize.horizontalBlockSize! * 210,
      width: double.maxFinite,
      // width: 100,
      child: Stack(
        children: [
          ///// Name
          Positioned(
            left: ScreenSize.fSize_8(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 57,
              width: ScreenSize.horizontalBlockSize! * 45,
              decoration: BoxDecoration(
                color: const Color(0xFF333333),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(
                      ScreenSize.fSize_100(),
                    ),
                    bottomLeft: Radius.circular(ScreenSize.fSize_100())),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: ScreenSize.fSize_28(),
                    top: -10,
                    child: Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_45(),
                      width: ScreenSize.horizontalBlockSize! * 38,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.fSize_15(),
                          fontWeight: FontWeight.w800,
                        ),
                        controller: PERSONAL.value.isEmpty
                            ? textController.nameController.value
                            : PERSONAL.value[0][0],
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "NOEL TAYLOR",
                          hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: ScreenSize.fSize_15(),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.horizontalBlockSize! * 5.8,
                    top: ScreenSize.horizontalBlockSize! * 3,
                    child: Container(
                      // color: Colors.green,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 35,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: PERSONAL.value.isEmpty
                            ? textController.professionController.value
                            : PERSONAL.value[0][1],
                        // controller: textController.professionController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "GRAPHIC & WEB DESIGNER",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_13(),
                    top: ScreenSize.fSize_60(),
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
                ],
              ),
            ),
          ),
          //// Contact Me
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 65,
            left: ScreenSize.fSize_15(),
            child: Row(
              children: [
                const Icon(Icons.account_circle_sharp,
                    color: Color(0xFF313131)),
                SizedBox(width: ScreenSize.fSize_6()),
                Text(
                  "CONTACT ME",
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.fSize_17()),
                ),
              ],
            ),
          ),
          //// Mobile Number
          Positioned(
              top: ScreenSize.horizontalBlockSize! * 75,
              left: ScreenSize.fSize_15(),
              child: Icon(
                Icons.phone_in_talk,
                size: ScreenSize.fSize_14(),
              )),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 70,
            left: ScreenSize.horizontalBlockSize! * 11,
            child: Padding(
              padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
              child: Container(
                // color: Colors.red,
                height: ScreenSize.fSize_40(),
                width: ScreenSize.fSize_120(),
                child: TextField(
                  controller: PERSONAL.value.isEmpty
                      ? textController.phoneController.value
                      : PERSONAL.value[0][4],
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.fSize_12()),
                  // controller: textController.phoneController.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "+1-718-310-5588",
                    hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
                        fontSize: ScreenSize.fSize_12()),
                  ),
                ),
              ),
            ),
          ),
          //// web
          Positioned(
              top: ScreenSize.horizontalBlockSize! * 81.5,
              left: ScreenSize.fSize_15(),
              child: Icon(
                Icons.language,
                size: ScreenSize.fSize_14(),
              )),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 76,
            left: ScreenSize.horizontalBlockSize! * 11,
            child: Padding(
              padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
              child: Container(
                color: Colors.transparent,
                height: ScreenSize.fSize_40(),
                width: ScreenSize.fSize_140(),
                child: TextField(
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.fSize_12()),
                  controller: PERSONAL.value.isEmpty
                      ? textController.emailController.value
                      : PERSONAL.value[0][2],
                  // controller: textController.emailController.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "www.yourwebsite.com",
                    hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
                        fontSize: ScreenSize.fSize_12()),
                  ),
                ),
              ),
            ),
          ),
          //// Address
          Positioned(
              top: ScreenSize.horizontalBlockSize! * 88,
              left: ScreenSize.fSize_15(),
              child: Icon(
                Icons.location_on,
                size: ScreenSize.fSize_14(),
              )),
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 83,
            left: ScreenSize.horizontalBlockSize! * 10,
            child: Padding(
              padding: EdgeInsets.only(top: ScreenSize.fSize_4()),
              child: Container(
                // color: Colors.red,
                height: ScreenSize.fSize_38(),
                width: ScreenSize.fSize_140(),
                child: TextField(
                  maxLines: 1,
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.fSize_12()),
                  controller: PERSONAL.value.isEmpty
                      ? textController.addressController.value
                      : PERSONAL.value[0][5],
                  // controller: textController.addressController.value,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Address",
                    hintStyle: GoogleFonts.openSans(
                        color: const Color(0xFF333333),
                        fontSize: ScreenSize.fSize_12()),
                  ),
                ),
              ),
            ),
          ),
          //// Education
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 100,
            left: ScreenSize.fSize_6(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 120,
              width: ScreenSize.horizontalBlockSize! * 48,
              decoration: BoxDecoration(
                  color: const Color(0xFF333333),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(ScreenSize.fSize_100()),
                    topRight: Radius.circular(ScreenSize.fSize_100()),
                  )),
              child: Stack(
                children: [
                  // EDUCATION
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.fSize_55(),
                    child: Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_20(),
                          width: ScreenSize.fSize_20(),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Image.asset(
                            "assets/image/Template Image/Resume 10 Image/education.png",
                          ),
                        ),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "EDUCATION",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.fSize_18()),
                        )
                      ],
                    ),
                  ),
                  // STANDFORD UNIVERSITY
                  Positioned(
                    left: ScreenSize.fSize_18(),
                    top: ScreenSize.horizontalBlockSize! * 19,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: ScreenSize.horizontalBlockSize! * 3.3,
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
                            fontWeight: FontWeight.w800,
                            fontSize: ScreenSize.horizontalBlockSize! * 3.3,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 23,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: education.value.isEmpty
                            ? textController.degreeController.value
                            : education.value[0][1],
                        // controller: textController.degreeController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "MASTER DEGREE GRADUATE",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 27,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: education.value.isEmpty
                            ? textController.startDateController.value
                            : education.value[0][5] == "true"
                                ? textController.presentController.value
                                : education.value[0][2],
                        // controller: textController.yearController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2011-2013",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // UNIVERSITY OF CHICAGO
                  Positioned(
                    left: ScreenSize.fSize_18(),
                    top: ScreenSize.horizontalBlockSize! * 35.5,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 39,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: education.value.length < 2
                            ? textController.degreeController2.value
                            : education.value[1][1],
                        // controller: textController.degreeController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "BACHELOR DEGREE GRADUATE",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 43,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: education.value.length < 2
                            ? textController.startDateController.value
                            : education.value[1][5] == "true"
                                ? textController.presentController.value
                                : education.value[1][2],
                        // controller: textController.startDateController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2007-2010",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // REFERENCES
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 56,
                    child: Row(
                      children: [
                        Container(
                          height: ScreenSize.fSize_20(),
                          width: ScreenSize.fSize_20(),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(Icons.people_rounded,
                              color: const Color(0xFF313131),
                              size: ScreenSize.fSize_16()),
                        ),
                        // Image.asset("assets/image/Icons/Education.png",
                        //     scale: 2.4),
                        SizedBox(width: ScreenSize.fSize_8()),
                        Text(
                          "REFERENCES",
                          style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: ScreenSize.fSize_18()),
                        )
                      ],
                    ),
                  ),
                  // DARWIN B. MAGANA
                  Positioned(
                    left: ScreenSize.fSize_18(),
                    top: ScreenSize.horizontalBlockSize! * 60,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 63.6,
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_40(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        controller: reference.value.isEmpty
                            ? textController.referenceAddress.value
                            : reference.value[0][1],
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "2813 Shobe Lane Mancos, CO.",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 68,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 72,
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
                  // ROBERT J. BELVIN
                  Positioned(
                    left: ScreenSize.fSize_18(),
                    top: ScreenSize.horizontalBlockSize! * 82,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 86,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 90.5,
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
                    left: ScreenSize.fSize_17(),
                    top: ScreenSize.horizontalBlockSize! * 95,
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
          // About Me
          Positioned(
            left: ScreenSize.fSize_170(),
            top: ScreenSize.fSize_10(),
            child: Row(
              children: [
                Icon(Icons.account_circle_sharp,
                    color: const Color(0xFF313131),
                    size: ScreenSize.fSize_25()),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "ABOUT ME",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.fSize_170(),
            top: ScreenSize.fSize_50(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.horizontalBlockSize! * 30,
              width: ScreenSize.horizontalBlockSize! * 43,
              child: TextField(
                controller: object.value[0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                ),
                maxLines: 7,
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
          // Job Experience
          Positioned(
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 48,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF313131)),
                  child: Icon(Icons.work,
                      size: ScreenSize.fSize_12(), color: Colors.white),
                ),
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
            left: ScreenSize.fSize_170(),
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 58,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 77,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 80,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 88,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 100,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 103,
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
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 112,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 45,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.descriptionController3.value
                    : workList.value[2][4],
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
          // Skills
          Positioned(
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 135,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF313131)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 7 Image/skill.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "SKILLS",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //// Sliders
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 70,
            top: ScreenSize.horizontalBlockSize! * 145,
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
            left: ScreenSize.horizontalBlockSize! * 51,
            top: ScreenSize.horizontalBlockSize! * 139.5,
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
          // Slider 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 70,
            top: ScreenSize.horizontalBlockSize! * 151,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
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
            left: ScreenSize.horizontalBlockSize! * 51,
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
            left: ScreenSize.horizontalBlockSize! * 70,
            top: ScreenSize.horizontalBlockSize! * 157,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
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
                width: ScreenSize.horizontalBlockSize! * 24,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 51,
            top: ScreenSize.horizontalBlockSize! * 151.5,
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
          // Slider 4
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 70,
            top: ScreenSize.horizontalBlockSize! * 163,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
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
            left: ScreenSize.horizontalBlockSize! * 51,
            top: ScreenSize.horizontalBlockSize! * 157.5,
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
          // Slider 5
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 70,
            top: ScreenSize.horizontalBlockSize! * 169,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 24,
              height: ScreenSize.horizontalBlockSize! * 1.5,
              child: Resume2CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 40.0
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
            left: ScreenSize.horizontalBlockSize! * 51,
            top: ScreenSize.horizontalBlockSize! * 164,
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
          // Language
          Positioned(
            left: ScreenSize.fSize_170(),
            top: ScreenSize.horizontalBlockSize! * 176,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_12(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF313131)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 7 Image/world.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "LANGUAGE",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                )
              ],
            ),
          ),
          ///// Language 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 182.5,
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
            left: ScreenSize.horizontalBlockSize! * 57,
            top: ScreenSize.horizontalBlockSize! * 177,
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
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 186.5,
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
            left: ScreenSize.horizontalBlockSize! * 57,
            top: ScreenSize.horizontalBlockSize! * 181.3,
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
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 190.5,
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
            left: ScreenSize.horizontalBlockSize! * 57,
            top: ScreenSize.horizontalBlockSize! * 185.3,
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
                  left: ScreenSize.horizontalBlockSize! * 54,
                  top: ScreenSize.horizontalBlockSize! * 194.5,
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
                  left: ScreenSize.horizontalBlockSize! * 57,
                  top: ScreenSize.horizontalBlockSize! * 189.3,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 12,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                        fontWeight: FontWeight.bold,
                      ),
                      // controller: language.value[3],
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
          //// Language 5
          language.value.length < 5
              ? Container()
              : Positioned(
                  left: ScreenSize.horizontalBlockSize! * 54,
                  top: ScreenSize.horizontalBlockSize! * 198.5,
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
                  left: ScreenSize.horizontalBlockSize! * 57,
                  top: ScreenSize.horizontalBlockSize! * 193.3,
                  child: Container(
                    height: ScreenSize.fSize_40(),
                    width: ScreenSize.horizontalBlockSize! * 12,
                    // color: Colors.red,
                    child: TextField(
                      style: GoogleFonts.openSans(
                        fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                        fontWeight: FontWeight.bold,
                      ),
                      // controller: language.value[4],
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
          //// Hobbies 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 77,
            top: ScreenSize.horizontalBlockSize! * 182.5,
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
            left: ScreenSize.horizontalBlockSize! * 80,
            top: ScreenSize.horizontalBlockSize! * 177,
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
          //// Hobbies 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 77,
            top: ScreenSize.horizontalBlockSize! * 186.5,
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
            left: ScreenSize.horizontalBlockSize! * 80,
            top: ScreenSize.horizontalBlockSize! * 181,
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
          //// Hobbies 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 77,
            top: ScreenSize.horizontalBlockSize! * 190.5,
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
            left: ScreenSize.horizontalBlockSize! * 80,
            top: ScreenSize.horizontalBlockSize! * 185,
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
          // Hobbies
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 75,
            top: ScreenSize.horizontalBlockSize! * 176,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_12(),
                  width: ScreenSize.fSize_12(),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFF313131)),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/hobbies.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "HOBBIES",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  template3Preview() {
    return SizedBox(
      height: ScreenSize.horizontalBlockSize! * 210,
      width: double.maxFinite,
      child: Stack(
        children: [
          //// Name
          Positioned(
            left: ScreenSize.fSize_10(),
            child: Container(
              height: ScreenSize.horizontalBlockSize! * 210,
              width: ScreenSize.horizontalBlockSize! * 46,
              color: const Color(0xFFD2E8E6),
              child: Stack(
                children: [
                  Positioned(
                    left: ScreenSize.horizontalBlockSize! * 5.5,
                    top: ScreenSize.fSize_30(),
                    child: Container(
                      color: Colors.transparent,
                      height: ScreenSize.fSize_24(),
                      width: ScreenSize.horizontalBlockSize! * 40,
                      child: TextField(
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                        ),
                        controller: PERSONAL.isNotEmpty
                            ? PERSONAL[0][1]
                            : textController.professionController.value,
                        // controller: textController.professionController.value,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "GRAPHIC & WEB DESIGNER",
                          hintStyle: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: ScreenSize.fSize_20(),
                    top: -10,
                    child: Container(
                      // color: Colors.red,
                      height: ScreenSize.fSize_50(),
                      width: ScreenSize.horizontalBlockSize! * 34,
                      child: TextField(
                        controller: PERSONAL.isNotEmpty
                            ? PERSONAL[0][0]
                            : textController.nameController.value,
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
                              fontSize: ScreenSize.horizontalBlockSize! * 5.7,
                              fontWeight: FontWeight.w800),
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
            left: ScreenSize.horizontalBlockSize! * 6.5,
            top: ScreenSize.horizontalBlockSize! * 17,
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
          // Contact Me
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 7.5,
            top: ScreenSize.horizontalBlockSize! * 60,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Icon(Icons.person_rounded,
                          color: Colors.white, size: ScreenSize.fSize_15())),
                ),
                SizedBox(width: ScreenSize.fSize_6()),
                Text(
                  "CONTACT ME",
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.fSize_16()),
                ),
              ],
            ),
          ),
          //// Mobile Number
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 70,
            child: Icon(Icons.phone_in_talk,
                size: ScreenSize.fSize_15(), color: const Color(0xFF323333)),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 16,
            top: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_120(),
              child: TextField(
                style: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_12()),
                controller: PERSONAL.value.isEmpty
                    ? textController.phoneController.value
                    : PERSONAL.value[0][4],
                // controller: textController.phoneController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "+1-718-310-5588",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.horizontalBlockSize! * 3),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 7,
            top: ScreenSize.horizontalBlockSize! * 75,
            child: Icon(Icons.language,
                size: ScreenSize.fSize_15(), color: const Color(0xFF323333)),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 13.5,
            top: ScreenSize.horizontalBlockSize! * 70,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.fSize_120(),
              child: TextField(
                controller: PERSONAL.value.isEmpty
                    ? textController.emailController.value
                    : PERSONAL.value[0][2],
                style: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_12()),
                // controller: textController.phoneController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.horizontalBlockSize! * 3),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 5,
            top: ScreenSize.horizontalBlockSize! * 80,
            child: Icon(Icons.location_on,
                size: ScreenSize.fSize_15(), color: const Color(0xFF323333)),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 11,
            top: ScreenSize.horizontalBlockSize! * 75,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 37,
              child: TextField(
                style: GoogleFonts.openSans(
                    color: const Color(0xFF333333),
                    fontSize: ScreenSize.fSize_12()),
                controller: PERSONAL.value.isEmpty
                    ? textController.addressController.value
                    : PERSONAL.value[0][5],
                // controller: textController.phoneController.value,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "769 PrudenceLincoln Park, MI",
                  hintStyle: GoogleFonts.openSans(
                      color: const Color(0xFF333333),
                      fontSize: ScreenSize.horizontalBlockSize! * 2.9),
                ),
              ),
            ),
          ),
          // Divider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 90,
            left: ScreenSize.fSize_17(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_10(),
              width: ScreenSize.fSize_150(),
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          // Education
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 6,
            top: ScreenSize.horizontalBlockSize! * 98,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/education.png",
                      color: Colors.white,
                    ),
                  )),
                ),
                SizedBox(width: ScreenSize.fSize_6()),
                Text(
                  "EDUCATION",
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.fSize_18()),
                ),
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 8,
            top: ScreenSize.horizontalBlockSize! * 102,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.schoolNameController.value
                    : education.value[0][0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "STANFORD UNIVERSITY",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 10,
            top: ScreenSize.horizontalBlockSize! * 106,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.degreeController.value
                    : education.value[0][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "MASTER DEGREE GRADUATE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 19,
            top: ScreenSize.horizontalBlockSize! * 110,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.isEmpty
                    ? textController.startDateController.value
                    : education.value[0][2],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
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
          // University of chicago
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 7,
            top: ScreenSize.horizontalBlockSize! * 118,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 42,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.schoolNameController2.value
                    : education.value[1][0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "UNIVERSITY OF CHICAGO",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 122.4,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                ),
                controller: education.value.length < 2
                    ? textController.degreeController2.value
                    : education.value[1][1],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "BACHELOR DEGREE GRADUATE",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.3,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 19,
            top: ScreenSize.horizontalBlockSize! * 130.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_20(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: education.value.length < 2
                    ? textController.startDateController2.value
                    : education.value[1][2],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2007-2010",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // Divider
          Positioned(
            top: ScreenSize.horizontalBlockSize! * 140,
            left: ScreenSize.fSize_17(),
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_10(),
              width: ScreenSize.fSize_150(),
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          // References
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 6,
            top: ScreenSize.horizontalBlockSize! * 150,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Icon(Icons.people_rounded,
                          color: Colors.white, size: ScreenSize.fSize_15())),
                ),
                SizedBox(width: ScreenSize.fSize_6()),
                Text(
                  "REFERENCES",
                  style: GoogleFonts.openSans(
                      color: const Color(0xFF323232),
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.fSize_18()),
                ),
              ],
            ),
          ),
          //// First
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 157,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 37,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceName.value
                    : reference.value[0][0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.2,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "DARWIN B. MAGANA",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 161.5,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 37,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                controller: reference.value.isEmpty
                    ? textController.referenceAddress.value
                    : reference.value[0][1],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2813 Shobe Lane Mancos, CO.",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 19,
            top: ScreenSize.horizontalBlockSize! * 166,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 35,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceNumber.value
                    : reference.value[0][2],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tel: +1-970-533-3393",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 9,
            top: ScreenSize.horizontalBlockSize! * 169.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.isEmpty
                    ? textController.referenceEmail.value
                    : reference.value[0][3],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email:www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // Robert J. Belvin (Second)
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 13,
            top: ScreenSize.horizontalBlockSize! * 178,
            child: Container(
              // color: Colors.red,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 30,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.2,
                ),
                controller: reference.value.length < 2
                    ? textController.referenceName2.value
                    : reference.value[1][0],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "ROBERT J. BELVIN",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: ScreenSize.horizontalBlockSize! * 3.2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 7.5,
            top: ScreenSize.horizontalBlockSize! * 182.5,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceAddress2.value
                    : reference.value[1][1],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "2119 Fairfax Drive Newark, NJ.",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 13,
            top: ScreenSize.horizontalBlockSize! * 187,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                controller: reference.value.length < 2
                    ? textController.referenceNumber2.value
                    : reference.value[1][2],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Tel: +1-908-987-5103",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 8,
            top: ScreenSize.horizontalBlockSize! * 191,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: TextField(
                controller: reference.value.length < 2
                    ? textController.referenceEmail2.value
                    : reference.value[1][3],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email:www.yourwebsite.com",
                  hintStyle: GoogleFonts.openSans(
                    color: Colors.black,
                    fontSize: ScreenSize.horizontalBlockSize! * 2.7,
                  ),
                ),
              ),
            ),
          ),
          // Vertical Dividre
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 49,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.horizontalBlockSize! * 240,
              child: const VerticalDivider(
                color: Colors.black,
                thickness: 2,
              ),
            ),
          ),
          // About Me
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.fSize_10(),
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                    size: ScreenSize.fSize_15(),
                  )),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "ABOUT ME",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 55.5,
            top: ScreenSize.fSize_40(),
            child: Container(
              // color: Colors.red,
              height: ScreenSize.horizontalBlockSize! * 35,
              width: ScreenSize.horizontalBlockSize! * 39,
              child: TextField(
                controller: object.value[0],
                style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.0,
                ),
                maxLines: 7,
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
          // Divider
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 55,
            top: ScreenSize.horizontalBlockSize! * 45,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_10(),
              width: ScreenSize.horizontalBlockSize! * 39,
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          // Job Experience
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 50,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Icon(
                    Icons.work,
                    color: Colors.white,
                    size: ScreenSize.fSize_16(),
                  )),
                ),
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
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 54,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.isEmpty
                        ? textController.jobExperience1.value
                        : workList.value[0][1],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: ScreenSize.horizontalBlockSize! * 2,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "SENIOR WEB DESIGNER",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 2,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 17,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.isEmpty
                        ? textController.jobExperience2.value
                        : workList.value[0][5] == "true"
                        ? textController.workPresentController1.value
                        : workList.value[0][2],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "2020-Present",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        fontSize: ScreenSize.horizontalBlockSize! * 2.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 59,
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
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Creative Angery / Chicago",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 65,
            child: Container(
              height: ScreenSize.fSize_50(),
              width: ScreenSize.horizontalBlockSize! * 42,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.isEmpty
                    ? textController.jobExperience24.value
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
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 76,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_40(),
                  width: ScreenSize.horizontalBlockSize! * 27,
                  color: Colors.transparent,
                  child: TextField(
                    controller: workList.value.length < 2
                        ? textController.jobExperience11.value
                        : workList.value[1][0],
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                      fontSize: ScreenSize.fSize_8(),
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "GRAPHIC DESIGNER",
                      hintStyle: GoogleFonts.openSans(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_8(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_10()),
                  child: Container(
                    height: ScreenSize.fSize_40(),
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
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 79,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 28,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.jobExperience13.value
                    : workList.value[1][0],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Creative Market / Chicago",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 90,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 42,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 2
                    ? textController.jobExperience24.value
                    : workList.value[1][4],
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
          // Marketing Manager
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 101,
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
                        color: Colors.black,
                        fontSize: ScreenSize.horizontalBlockSize! * 2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenSize.fSize_10()),
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
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 101.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 29,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.jobExperience13.value
                    : workList.value[2][0],
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.horizontalBlockSize! * 2,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Manufacturing Agency / NJ",
                  hintStyle: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: ScreenSize.horizontalBlockSize! * 2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 114,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 42,
              color: Colors.transparent,
              child: TextField(
                controller: workList.value.length < 3
                    ? textController.jobExperience24.value
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
          // Divider
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 125,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_10(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          // Skills
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 132,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_20(),
                  width: ScreenSize.fSize_20(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 7 Image/skill.png",
                      color: Colors.white,
                    ),
                  )),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "SKILLS",
                  style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          //// Sliders 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 73,
            top: ScreenSize.horizontalBlockSize! * 142,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 2,
              child: Resume3CustomSlider(
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
                color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 53,
            top: ScreenSize.horizontalBlockSize! * 136.5,
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
          //// Sliders 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 73,
            top: ScreenSize.horizontalBlockSize! * 148,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 2,
              child: Resume3CustomSlider(
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
                color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 53,
            top: ScreenSize.horizontalBlockSize! * 143,
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
          //// Sliders 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 73,
            top: ScreenSize.horizontalBlockSize! * 154,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 2,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 50.0
                    : skillRateValue.value[0][2],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 53,
            top: ScreenSize.horizontalBlockSize! * 149,
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
          //// Sliders 4
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 73,
            top: ScreenSize.horizontalBlockSize! * 160,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 2,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 50.0
                    : skillRateValue.value[0][3],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 53,
            top: ScreenSize.horizontalBlockSize! * 155,
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
          //// Sliders 5
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 73,
            top: ScreenSize.horizontalBlockSize! * 166,
            child: Container(
              width: ScreenSize.horizontalBlockSize! * 21,
              height: ScreenSize.horizontalBlockSize! * 2,
              child: Resume3CustomSlider(
                value: skillRateValue.value.isEmpty
                    ? 50.0
                    : skillRateValue.value[0][4],
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // setState(() {
                  print('Slider value: $value');
                  // });
                },
                color: '',
                width: ScreenSize.horizontalBlockSize! * 21,
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 53,
            top: ScreenSize.horizontalBlockSize! * 161,
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
          // Divider
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 172,
            child: Container(
              color: Colors.transparent,
              height: ScreenSize.fSize_10(),
              width: ScreenSize.horizontalBlockSize! * 40,
              child: const Divider(
                color: Colors.black,
                thickness: 1,
              ),
            ),
          ),
          // Language
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 54,
            top: ScreenSize.horizontalBlockSize! * 177,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_10(),
                  width: ScreenSize.fSize_10(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 7 Image/world.png",
                      color: Colors.white,
                    ),
                  )),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "LANGUAGE",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                )
              ],
            ),
          ),
          // Hobbies
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 75,
            top: ScreenSize.horizontalBlockSize! * 177,
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_10(),
                  width: ScreenSize.fSize_10(),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF01A698),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Image.asset(
                      "assets/image/Template Image/Resume 10 Image/hobbies.png",
                      color: Colors.white,
                    ),
                  )),
                ),
                SizedBox(width: ScreenSize.fSize_4()),
                Text(
                  "HOBBIES",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.fSize_8(),
                  ),
                )
              ],
            ),
          ),
          // Language 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 183,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 59,
            top: ScreenSize.horizontalBlockSize! * 177.5,
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
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Language 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 188,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 59,
            top: ScreenSize.horizontalBlockSize! * 182.5,
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
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Language 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 193,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 59,
            top: ScreenSize.horizontalBlockSize! * 187.5,
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
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Language 4
          language.value.length < 4
              ? Container()
              : Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 198,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          language.value.length < 4
              ? Container()
              : Positioned(
            left: ScreenSize.horizontalBlockSize! * 59,
            top: ScreenSize.horizontalBlockSize! * 192.5,
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
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Language 5
          language.value.length < 5
              ? Container()
              : Positioned(
            left: ScreenSize.horizontalBlockSize! * 56,
            top: ScreenSize.horizontalBlockSize! * 203,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          language.value.length < 5
              ? Container()
              : Positioned(
            left: ScreenSize.horizontalBlockSize! * 59,
            top: ScreenSize.horizontalBlockSize! * 197.5,
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
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          /////////////////////// Hobbies ///////////////////////
          // Hobbies 1
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 78,
            top: ScreenSize.horizontalBlockSize! * 183,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 81,
            top: ScreenSize.horizontalBlockSize! * 177.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 13,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[0],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Hobbies 2
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 78,
            top: ScreenSize.horizontalBlockSize! * 188,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 81,
            top: ScreenSize.horizontalBlockSize! * 182.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 13,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[1],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Known Language",
                  hintStyle: GoogleFonts.openSans(
                    fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Hobbies 3
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 78,
            top: ScreenSize.horizontalBlockSize! * 193,
            child: Container(
              height: ScreenSize.fSize_6(),
              width: ScreenSize.fSize_6(),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color: Colors.red,
                color: Color(0xFF02A799),
              ),
            ),
          ),
          Positioned(
            left: ScreenSize.horizontalBlockSize! * 81,
            top: ScreenSize.horizontalBlockSize! * 187.5,
            child: Container(
              height: ScreenSize.fSize_40(),
              width: ScreenSize.horizontalBlockSize! * 13,
              // color: Colors.red,
              child: TextField(
                style: GoogleFonts.openSans(
                  fontSize: ScreenSize.horizontalBlockSize! * 1.9,
                  fontWeight: FontWeight.bold,
                ),
                controller: hobbies.value[2],
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Known Language",
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
}

/*
* ///// Template 4
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
                          fontSize: ScreenSize.horizontalBlockSize! *2,
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
                          fontSize: ScreenSize.horizontalBlockSize! *2,
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
                          fontSize: ScreenSize.horizontalBlockSize! *2,
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
                          fontSize: ScreenSize.horizontalBlockSize! *2,
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
                          fontSize: ScreenSize.horizontalBlockSize! *2,
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
                  :  education.value[0][0],
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
                  :  education.value[0][1],
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
                  :  education.value[0][4],
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
              controller: education.value.length <2
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
              controller: education.value.length <2
                  ? textController.resume4SchoolName2.value
                  :  education.value[1][0],
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
              controller: education.value.length <2
                  ? textController.resume4DegreeName2.value
                  :  education.value[1][1],
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
              controller: education.value.length <2
                  ? textController.resume4Additional2.value
                  :  education.value[1][4],
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
              controller: education.value.length <3
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
              controller: education.value.length <3
                  ? textController.resume4SchoolName3.value
                  :  education.value[2][0],
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
              controller: education.value.length <3
                  ? textController.resume4DegreeName3.value
                  :  education.value[2][1],
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
              controller: education.value.length <3
                  ? textController.resume4Additional3.value
                  :  education.value[2][4],
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
              controller: education.value.length <4
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
              controller: education.value.length <4
                  ? textController.resume4SchoolName4.value
                  :  education.value[3][0],
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
              controller: education.value.length <4
                  ? textController.resume4DegreeName4.value
                  :  education.value[3][1],
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
              controller: education.value.length <4
                  ? textController.resume4Additional4.value
                  :  education.value[3][4],
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
                  :  workList.value[0][0],
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
                  :  workList.value[0][1],
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
                  :  workList.value[0][4],
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
              controller: workList.value.length<2
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
              controller: workList.value.length<2
                  ? textController.resume4ExPosition2.value
                  :  workList.value[1][0],
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
              controller: workList.value.length<2
                  ? textController.resume4ExName2.value
                  :  workList.value[1][1],
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
              controller: workList.value.length<2
                  ? textController.resume4ExDescription2.value
                  :  workList.value[1][4],
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
              controller: workList.value.length<3
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
              controller: workList.value.length<3
                  ? textController.resume4ExPosition3.value
                  :  workList.value[2][0],
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
              controller: workList.value.length<3
                  ? textController.resume4ExName3.value
                  :  workList.value[2][1],
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
              controller: workList.value.length<3
                  ? textController.resume4ExDescription3.value
                  :  workList.value[2][4],
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
              controller: workList.value.length<4
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
              controller: workList.value.length<4
                  ? textController.resume4ExPosition4.value
                  :  workList.value[3][0],
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
              controller: workList.value.length<4
                  ? textController.resume4ExName4.value
                  :  workList.value[3][1],
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
              controller: workList.value.length<4
                  ? textController.resume4ExDescription4.value
                  :  workList.value[3][4],
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
  }*/
