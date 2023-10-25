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

var education = [].obs;

class AddEducationDetailsScreen extends StatefulWidget {
  const AddEducationDetailsScreen({super.key});

  @override
  State<AddEducationDetailsScreen> createState() =>
      _AddEducationDetailsScreenState();
}

class _AddEducationDetailsScreenState extends State<AddEducationDetailsScreen>
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
    textControllers = List.generate(5, (index) => TextEditingController());
    super.initState();
  }

  var educationDetails;

  List<TextEditingController> textControllers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add Education Details",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              textControllers =
                  List.generate(5, (index) => TextEditingController());
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
          context, "Add Education Details"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: ScreenSize.fSize_20()),
          appFunctionController.personalInfoTextField(
            context,
            "School / College Name",
            textControllers[0],
            TextInputType.name,
          ),
          appFunctionController.personalInfoTextField(
            context,
            "Degree / Course Name",
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
              () => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      textController.educationShowButton.value =
                          !textController.educationShowButton.value;
                    },
                    child: textController.educationShowButton.value == false
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
                                color: appColorController.boxColor, fill: 0.5),
                          ),
                  ),
                  SizedBox(width: ScreenSize.fSize_10()),
                  Text(
                    "Currently Study Here",
                    style: appFontStyleData.educationStyle(
                        context, textController.educationShowButton.value),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          appAllTextFieldController.objectiveFiels(
            context,
            textControllers[4],
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
                    textControllers[4].text.isEmpty) {
                  tostController.errorTost();
                } else {
                  tostController.successTost();
                  educationDetails = prefs.setStringList(
                    "education",
                    [
                      textControllers[0].text,
                      textControllers[1].text,
                      textControllers[2].text,
                      textControllers[3].text,
                      textControllers[4].text,
                      textController.educationShowButton.string,
                    ],
                  );
                  education.add(
                    [
                      textControllers[0],
                      textControllers[1],
                      textControllers[2],
                      textControllers[3],
                      textControllers[4],
                      textController.educationShowButton.string,
                    ],
                  );
                  Get.back();
                }
                education.refresh();
              },
            ),
          )
        ],
      ),
    );
  }
}
