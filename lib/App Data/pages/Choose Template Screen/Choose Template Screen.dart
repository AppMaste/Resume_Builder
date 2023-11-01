// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/App%20Data/services/Controller/Native%20and%20Banner%20Controller.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';
import 'Template Preview Screen.dart';

class ChooseTemplateScreen extends StatelessWidget {
  ChooseTemplateScreen({super.key});

  List templateImage = [
    "assets/image/Template Image/Resume 1.jpg",
    "assets/image/Template Image/Resume 2.jpg",
    "assets/image/Template Image/Resume 3.jpg",
    "assets/image/Template Image/Resume 4.jpg",
    "assets/image/Template Image/Resume 5.jpg",
    "assets/image/Template Image/Resume 6.jpg",
    "assets/image/Template Image/Resume 7.jpg",
    "assets/image/Template Image/Resume 8.jpg",
    "assets/image/Template Image/Resume 9.jpg",
    "assets/image/Template Image/Resume 10.jpg",
    "assets/image/Template Image/Resume 11.jpg",
    "assets/image/Template Image/Resume 12.jpg",
    "assets/image/Template Image/Resume 13.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/ChooseTemplateScreen");
        return Future(() => false);
      },
      child: Scaffold(
        appBar:
            appbarController.customAppBarController(context, "Choose Template"),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding:  EdgeInsets.only(bottom: ScreenSize.fSize_50()),
                child: GridView.builder(
                  shrinkWrap: false,
                  // physics: const NeverScrollableScrollPhysics(),
                  cacheExtent: 9999,
                  itemCount: templateImage.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: ScreenSize.fSize_10(),
                      crossAxisSpacing: ScreenSize.fSize_10(),
                      childAspectRatio: 10 / 14),
                  itemBuilder: (context, index) {
                    return Container(
                      child: GestureDetector(
                        onTap: () {
                          tapController.showbuttonad(context, "/TemplatePreviewScreen", "/ChooseTemplateScreen", index);
                          // Get.to(() =>  TemplatePreviewScreen(),arguments: index);
                        },
                        child: Image.asset(
                          templateImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            resumeBannerADController.showBanner("/ChooseTemplateScreen")
          ],
        ),
      ),
    );
  }
}
