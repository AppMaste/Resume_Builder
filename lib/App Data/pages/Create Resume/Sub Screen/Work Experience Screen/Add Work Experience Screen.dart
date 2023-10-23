// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/cupertino.dart';
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

var workList = [].obs;

class AddWorkExperienceScreen extends StatefulWidget {
  const AddWorkExperienceScreen({super.key});

  @override
  State<AddWorkExperienceScreen> createState() =>
      _AddWorkExperienceScreenState();
}

class _AddWorkExperienceScreenState extends State<AddWorkExperienceScreen>
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

  var workDetails;

  DateTime? date;

  List<TextEditingController> textControllers = <TextEditingController>[].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add More Experience",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () {
              setState(() {});
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
          context, "Add Work Experience"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: ScreenSize.fSize_20()),
          appFunctionController.personalInfoTextField(
            context,
            "Company Name",
            textControllers[0],
            TextInputType.name,
          ),
          appFunctionController.personalInfoTextField(
            context,
            "Position",
            textControllers[1],
            TextInputType.name,
          ),
          Padding(
            padding: EdgeInsets.all(ScreenSize.fSize_14()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenSize.fSize_150(),
                  color: Colors.transparent,
                  child: TextField(
                    controller: textControllers[2],
                    keyboardType: TextInputType.datetime,
                    readOnly: date == null ? false : true,
                    decoration: InputDecoration(
                      hintText: date == null ? "Start Date" : date.toString(),
                      suffixIcon: GestureDetector(
                        child: const Icon(Icons.calendar_month),
                      ),
                      suffixIconColor: appColorController.boxColor,
                      hintStyle: date == null
                          ? GoogleFonts.openSans(
                              color: appColorController.workTextColor,
                            )
                          : GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: ScreenSize.fSize_15(),
                            ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: appColorController.boxColor, width: 2),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: ScreenSize.fSize_150(),
                  color: Colors.transparent,
                  child: TextField(
                    controller: textControllers[3],
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: "End Date",
                      suffixIcon: GestureDetector(
                        child: const Icon(Icons.calendar_month),
                      ),
                      suffixIconColor: appColorController.boxColor,
                      hintStyle: GoogleFonts.openSans(
                        color: appColorController.workTextColor,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: appColorController.boxColor, width: 2),
                      ),
                    ),
                  ),
                )
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
                      textController.workShowButton.value =
                          !textController.workShowButton.value;
                    },
                    child: textController.workShowButton.value == false
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
                    "Currently Work Here",
                    style: appFontStyleData.objectiveStyle(
                        context, textController.workShowButton.value),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          appAllTextFieldController.objectiveFiels(
            context,
            textControllers[4],
            "Description",
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
                  workList.value.add(
                    [
                      textControllers[0].text,
                      textControllers[1].text,
                      textControllers[2].text,
                      textControllers[3].text,
                      textControllers[4].text,
                      textController.workShowButton.string,
                    ],
                  );
                  workDetails = prefs.setStringList(
                    "work",
                    [
                      textControllers[0].text,
                      textControllers[1].text,
                      textControllers[2].text,
                      textControllers[3].text,
                      textControllers[4].text,
                      textController.workShowButton.string,
                      date.toString(),
                    ],
                  );
                  log("listlistlist $workList");
                }
                workList.refresh();
                // }
              },
            ),
          )
        ],
      ),
    );
  }
}
