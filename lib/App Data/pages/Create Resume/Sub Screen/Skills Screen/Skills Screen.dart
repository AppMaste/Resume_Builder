// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Add Skills Screen.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _WorkExperienceScreenState();
}

class _WorkExperienceScreenState extends State<SkillsScreen>
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
            title: "Add Skills",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              Get.to(() => const AddSkillsScreen());
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
      appBar: appbarController.customAppBarController(context, "Skills"),
      body: Obx(
        () => skillValue.value.isNotEmpty
            ? ListView.builder(
                itemCount: skill.value.length,
                itemBuilder: (context, index) {
                  return Container(
                    // width: 100,
                    // height: 100,
                    // color: Colors.blue,
                    margin: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    ScreenSize.fSize_10()),
                                border: Border.all(
                                    color: appColorController.boxColor,
                                    width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: ScreenSize.fSize_45(),
                                    // color: Colors.red,
                                    child: TextField(
                                      style: GoogleFonts.openSans(
                                        fontWeight: FontWeight.w600,
                                      ),
                                      controller: skill.value[index],
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Skill Name",
                                        hintStyle:
                                            appFontStyleData.workTextStyle,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: ScreenSize.fSize_10()),
                                  Container(
                                    height: ScreenSize.fSize_2(),
                                    width: double.maxFinite,
                                    color: appColorController.boxColor,
                                  ),
                                  SizedBox(height: ScreenSize.fSize_30()),
                                  Text(
                                    "Score",
                                    style: appFontStyleData.workTextStyle,
                                  ),
                                  Obx(
                                    () => Row(
                                      children: [
                                        Container(
                                          width:
                                              ScreenSize.horizontalBlockSize! *
                                                  75,
                                          // color: Colors.red,
                                          child: SfSliderTheme(
                                            data: SfSliderThemeData(
                                              activeTrackHeight: 6,
                                              thumbColor: Colors.transparent,
                                              thumbRadius: 10,
                                              thumbStrokeWidth: 0,
                                              activeTrackColor:
                                                  appColorController.boxColor,
                                              inactiveTrackColor:
                                                  Colors.black12,
                                              thumbStrokeColor: Colors.black45,
                                            ),
                                            child: Center(
                                              child: SfSlider(
                                                showLabels: false,
                                                value: skillDoubleValue
                                                    .value[index],
                                                min: 0.0,
                                                max: 100.0,
                                                thumbIcon: Image.asset(
                                                    "assets/image/local image/thumb.png"),
                                                onChanged: (value) {
                                                  setState(() {
                                                    skillDoubleValue
                                                        .value[index] = value;
                                                    // print(
                                                    //     "slider value${Value.value}");
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: ScreenSize.fSize_50(),
                                          color: Colors.transparent,
                                          child: Text(
                                            "${skillDoubleValue.value[index].round()}%",
                                            overflow: TextOverflow.ellipsis,
                                            style: appFontStyleData.skillStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_20()),
                          const Divider(thickness: 2, color: Color(0xFFD2E3E2)),
                        ],
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
