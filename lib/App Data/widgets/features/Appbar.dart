// ignore_for_file: camel_case_types

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/color.dart';

appBarController appbarController = appBarController();

class appBarController extends GetxController {
  customAppBarController(BuildContext context, String title) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: GoogleFonts.openSans(
          color: Colors.black,
        ),
      ),
    );
  }
}
