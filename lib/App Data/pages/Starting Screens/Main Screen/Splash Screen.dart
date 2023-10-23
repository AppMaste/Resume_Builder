import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/images.dart';
import '../../../widgets/global/MediaQuery/size.dart';
import 'Data Load Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  AppDataLoadScreen appController = Get.put(AppDataLoadScreen());

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              appImageDataController.logo,
              scale: 2.3,
            ),
            Image.asset(
              appImageDataController.logo1,
              scale: 2.3,
            ),
          ],
        ),
      ),
    );
  }
}
