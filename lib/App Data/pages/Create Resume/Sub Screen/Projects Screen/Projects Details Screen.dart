// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../services/functions/App Functions/Tost Function.dart';
import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextController.dart';
import '../../../../widgets/features/TextField.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var project = [].obs;

class AddProjectDetailsScreen extends StatefulWidget {
  const AddProjectDetailsScreen({super.key});

  @override
  State<AddProjectDetailsScreen> createState() =>
      _AddWorkExperienceScreenState();
}

class _AddWorkExperienceScreenState extends State<AddProjectDetailsScreen>
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
    textControllers = List.generate(6, (index) => TextEditingController());
    super.initState();
  }

  var projectDetails;

  List<TextEditingController> textControllers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add Project Details",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              setState(() {});
              textControllers =
                  List.generate(6, (index) => TextEditingController());
              _animationController.reverse();
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
      appBar: appbarController.customAppBarController(
          context, "Add Project Details"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenSize.fSize_20()),
            appFunctionController.personalInfoTextField(
              context,
              "Project Title",
              textControllers[0],
              TextInputType.name,
            ),
            appFunctionController.personalInfoTextField(
              context,
              "Role",
              textControllers[1],
              TextInputType.name,
            ),
            Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_14()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appAllTextFieldController.addWorkTextField(
                      context,
                      textControllers[2],
                      "Start Date",
                      () {},
                      TextInputType.datetime),
                  appAllTextFieldController.addWorkTextField(
                      context,
                      textControllers[3],
                      "End Date",
                      () {},
                      TextInputType.datetime),
                ],
              ),
            ),
            SizedBox(height: ScreenSize.fSize_20()),
            Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_14()),
              child: Obx(
                () => GestureDetector(
                  onTap: () {
                    textController.projectShowButton.value =
                        !textController.projectShowButton.value;
                  },
                  child: Row(
                    children: [
                      textController.projectShowButton.value == false
                          ? Container(
                              width: ScreenSize.fSize_28(),
                              height: ScreenSize.fSize_28(),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(ScreenSize.fSize_4()),
                                border: Border.all(
                                  color: appColorController.workTextColor,
                                  width: 2,
                                ),
                              ),
                            )
                          : Container(
                              width: ScreenSize.fSize_28(),
                              height: ScreenSize.fSize_28(),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(ScreenSize.fSize_4()),
                                border: Border.all(
                                  color: appColorController.boxColor,
                                  width: 2,
                                ),
                              ),
                              child: Icon(Icons.check,
                                  color: appColorController.boxColor,
                                  fill: 0.5),
                            ),
                      SizedBox(width: ScreenSize.fSize_10()),
                      Text("In Progress",
                          style: appFontStyleData.educationStyle(
                              context, textController.projectShowButton.value)
                          // style: appFontStyleData.objectiveStyle(context, value),
                          ),
                    ],
                  ),
                ),
              ),
            ),
            appFunctionController.personalInfoTextField(
              context,
              "Company Name",
              textControllers[4],
              TextInputType.name,
            ),
            appAllTextFieldController.objectiveFiels(
              context,
              textControllers[5],
              "Additional Info",
              TextInputType.name,
            ),
            SizedBox(height: ScreenSize.fSize_30()),
            Center(
              child: appFunctionController.createResumeButton(
                context,
                "SAVE",
                () async {
                  final prefs = await SharedPreferences.getInstance();
                  if (textControllers[0].text.isEmpty ||
                      textControllers[1].text.isEmpty ||
                      textControllers[2].text.isEmpty ||
                      textControllers[3].text.isEmpty ||
                      textControllers[4].text.isEmpty ||
                      textControllers[5].text.isEmpty) {
                    tostController.errorTost();
                  } else {
                    tostController.successTost();
                    projectDetails = prefs.setStringList(
                      "project",
                      [
                        textControllers[0].text,
                        textControllers[1].text,
                        textControllers[2].text,
                        textControllers[3].text,
                        textControllers[4].text,
                        textControllers[5].text,
                        textController.projectShowButton.string,
                      ],
                    );
                    project.value.add(
                      [
                        textControllers[0],
                        textControllers[1],
                        textControllers[2],
                        textControllers[3],
                        textControllers[4],
                        textControllers[5],
                        textController.projectShowButton.string,
                      ],
                    );
                    print("projectetails $project");
                  }
                  project.refresh();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
