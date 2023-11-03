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

}

