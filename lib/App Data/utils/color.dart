import 'dart:ui';

import 'package:get/get.dart';

AppColorDataController appColorController = AppColorDataController();

class AppColorDataController extends GetxController {
  Color boxColor = const Color(0xFF00A59D);
  List<Color> bagroundColor = [
    const Color(0xFFffffff),
    const Color(0xFF65E3D9).withOpacity(0.3),
  ];
  Color workTextColor = const Color(0xFF6E7474);
  Color skillColor = const Color(0xFFD9D9D9);
  Color dividerColor = const Color(0xFFB1F2EF);
}
