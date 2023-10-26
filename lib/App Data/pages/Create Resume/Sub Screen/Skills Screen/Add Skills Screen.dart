// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

import 'dart:developer';

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import '../../../../services/functions/App Functions/Tost Function.dart';
import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var skillNameValue = [].obs;
var skillRateValue = [].obs;

var skill = [
  TextEditingController(text: "Adobe Photoshop"),
  TextEditingController(text: "Adobe Illustrator"),
  TextEditingController(text: "Microsoft Word"),
  TextEditingController(text: "Microsoft Powerpoint"),
  TextEditingController(text: "HTML-S/CSS-3"),
].obs;

var skillDoubleValue = [
  30.0,
  40.0,
  50.0,
  60.0,
  70.0,
].obs;

class AddSkillsScreen extends StatefulWidget {
  const AddSkillsScreen({super.key});

  @override
  State<AddSkillsScreen> createState() => _AddSkillsScreenState();
}

class _AddSkillsScreenState extends State<AddSkillsScreen>
    with SingleTickerProviderStateMixin {
  var Value = 10.0.obs;
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

  var skillsDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            onPress: () {
              setState(() {});
              skillDoubleValue.refresh();
              _animationController.reverse();
              skill.value.add(TextEditingController());
              skillDoubleValue.value.add(30.0);
              skill.refresh();
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
      appBar: appbarController.customAppBarController(context, "Add Skills"),
      body: skill.value.isNotEmpty
          ? Column(
              children: [
                Container(
                  height: ScreenSize.horizontalBlockSize! * 160,
                  child: ListView.builder(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                      // Text(
                                      //   "Skill Name",
                                      //   style: appFontStyleData.workTextStyle,
                                      // ),
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
                                              width: ScreenSize
                                                      .horizontalBlockSize! *
                                                  75,
                                              // color: Colors.red,
                                              child: SfSliderTheme(
                                                data: SfSliderThemeData(
                                                  activeTrackHeight: 6,
                                                  thumbColor:
                                                      Colors.transparent,
                                                  thumbRadius: 10,
                                                  thumbStrokeWidth: 0,
                                                  activeTrackColor:
                                                      appColorController
                                                          .boxColor,
                                                  inactiveTrackColor:
                                                      Colors.black12,
                                                  thumbStrokeColor:
                                                      Colors.black45,
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
                                                                .value[index] =
                                                            value;
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
                                                style:
                                                    appFontStyleData.skillStyle,
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
                              const Divider(
                                  thickness: 2, color: Color(0xFFD2E3E2)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                appFunctionController.createResumeButton(
                  context,
                  "SAVE",
                  () async {
                    tostController.successTost();
                    final prefs = await SharedPreferences.getInstance();
                    // skillValue.value = [skill.value];
                    skillNameValue.value.add(skill.value);
                    skillRateValue.value.add(skillDoubleValue.value);
                    skillNameValue.refresh();
                    Get.back();
                    // log("skillValue ${skillValue.value}");
                  },
                ),
              ],
            )
          : Center(
              child: Text(
                "Create One Now!",
                style: appFontStyleData.workTextStyle,
              ),
            ),
    );
  }
}
