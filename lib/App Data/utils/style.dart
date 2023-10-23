import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/global/MediaQuery/size.dart';
import 'color.dart';

AppFontStyleData appFontStyleData = AppFontStyleData();

class AppFontStyleData extends GetxController {
  TextStyle mainTitle = GoogleFonts.openSans(
    fontWeight: FontWeight.bold,
    fontSize: ScreenSize.fSize_28(),
  );
  TextStyle resumeBuilder = GoogleFonts.openSans(
    fontWeight: FontWeight.w700,
    fontSize: ScreenSize.fSize_20(),
  );
  TextStyle achievements = GoogleFonts.openSans(
    fontWeight: FontWeight.w500,
    fontSize: ScreenSize.fSize_15(),
  );
  TextStyle skillStyle = GoogleFonts.openSans(
    fontWeight: FontWeight.w600,
    fontSize: ScreenSize.fSize_17(),
  );

  TextStyle workTextStyle = GoogleFonts.openSans(
    color: appColorController.workTextColor,
  );

  TextStyle objectiveStyle(BuildContext context, var value) {
    return GoogleFonts.openSans(
        color: value == true
            ? appColorController.boxColor
            : appColorController.workTextColor,
        fontSize: ScreenSize.fSize_17(),
        fontWeight: FontWeight.bold);
  }

  educationStyle(BuildContext context, var value) {
    return GoogleFonts.openSans(
        color: value == true
            ? appColorController.boxColor
            : appColorController.workTextColor,
        fontSize: ScreenSize.fSize_17(),
        fontWeight: FontWeight.bold);
  }
}
