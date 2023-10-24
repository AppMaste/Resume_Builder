// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';

import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import '../Work Experience Screen/Work Experience Screen.dart';
import 'Achievements Details Screen.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _WorkExperienceScreenState();
}

class _WorkExperienceScreenState extends State<AchievementsScreen>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add Achievements",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              tapController.showbuttonad(context, "/AddAchievementDetailsScreen", "/AchievementsScreen", "");
              // Get.to(() => const AddAchievementDetailsScreen());
            },
            icon: Icons.info_outline_rounded,
          ),
        ],
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconColor: Colors.white,
        iconData: Icons.add,
        backGroundColor: appColorController.boxColor,
      ),
      appBar: appbarController.customAppBarController(context, "Achievements"),
      body: Obx(
        () => achivement.value.isNotEmpty
            ? ListView.builder(
                itemCount: achivement.value.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(ScreenSize.fSize_10()),
                          border: Border.all(
                            width: 2,
                            color: appColorController.boxColor,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: ScreenSize.fSize_55(),
                              width: ScreenSize.fSize_70(),
                              // color: Colors.red,
                              child: TextField(
                                controller: achivement.value[index][0],
                                decoration: const InputDecoration(
                                  labelText: "Award Title:-",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            CustomPaint(
                              painter: DottedLinePainter(),
                              size: const Size(
                                  400, 0), // Adjust the size of the dotted line
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            Container(
                              height: ScreenSize.fSize_55(),
                              width: ScreenSize.fSize_70(),
                              // color: Colors.red,
                              child: TextField(
                                controller: achivement.value[index][1],
                                decoration: const InputDecoration(
                                  labelText: "Issuer Name:-",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            CustomPaint(
                              painter: DottedLinePainter(),
                              size: const Size(
                                  400, 0), // Adjust the size of the dotted line
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: ScreenSize.fSize_55(),
                                      width: ScreenSize.fSize_70(),
                                      // color: Colors.red,
                                      child: TextField(
                                        controller: achivement.value[index][2],
                                        decoration: const InputDecoration(
                                          labelText: "Year:-",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Month:-",
                                      style: GoogleFonts.openSans(),
                                    ),
                                    Container(
                                      width: ScreenSize.fSize_80(),
                                      child: Text(
                                        achivement.value[index][4],
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: ScreenSize.fSize_15(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            CustomPaint(
                              painter: DottedLinePainter(),
                              size: const Size(
                                  400, 0), // Adjust the size of the dotted line
                            ),
                            SizedBox(height: ScreenSize.fSize_4()),
                            Container(
                              height: ScreenSize.fSize_55(),
                              width: ScreenSize.horizontalBlockSize! * 90,
                              // color: Colors.red,
                              child: TextField(
                                controller: achivement.value[index][3],
                                decoration: const InputDecoration(
                                  labelText: "Additional Info:-",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      appImageDataController.noDatFound,
                      scale: 1.3,
                    ),
                    Text(
                      "No Data Found",
                      style: appFontStyleData.resumeBuilder,
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Text(
                      "Create One Now!",
                      style: appFontStyleData.workTextStyle,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
