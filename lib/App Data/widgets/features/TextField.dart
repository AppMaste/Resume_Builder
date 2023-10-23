import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';
import '../global/MediaQuery/size.dart';

AppAllTextField appAllTextFieldController = AppAllTextField();

class AppAllTextField extends GetxController {
  objectiveFiels(BuildContext context, var controller, String hintText,var keyboardType) {
    return Padding(
      padding: EdgeInsets.all(ScreenSize.fSize_15()),
      child: TextField(
        controller: controller,
        maxLines: 4,
        textInputAction: TextInputAction.done,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            color: const Color(0xFF6E7474),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: appColorController.boxColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 3,
              color: appColorController.boxColor,
            ),
          ),
        ),
      ),
    );
  }

  workExperienceTextField(BuildContext context, var controller) {
    return TextField(
      controller: controller,
      maxLines: 5,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: appColorController.boxColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: appColorController.boxColor,
          ),
        ),
      ),
    );
  }

  addWorkTextField(BuildContext context, var controller, String title,var ontap,var keybordType) {
    return Container(
      width: ScreenSize.fSize_150(),
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        keyboardType: keybordType,
        decoration: InputDecoration(
          hintText: title,
          suffixIcon: GestureDetector(
            onTap: ontap,
            child: const Icon(Icons.calendar_month),
          ),
          suffixIconColor: appColorController.boxColor,
          hintStyle: GoogleFonts.openSans(
            color: appColorController.workTextColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: appColorController.boxColor, width: 2),
          ),
        ),
      ),
    );
  }

  addAchievementsTextField(BuildContext context, var controller, String title,var keybordType) {
    return Container(
      width: ScreenSize.fSize_150(),
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        keyboardType: keybordType,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: GoogleFonts.openSans(
            color: appColorController.workTextColor,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: appColorController.boxColor, width: 2),
          ),
        ),
      ),
    );
  }
}
