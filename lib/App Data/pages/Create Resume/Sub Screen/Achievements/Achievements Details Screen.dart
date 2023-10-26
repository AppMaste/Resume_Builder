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

var achivement = [].obs;

class AddAchievementDetailsScreen extends StatefulWidget {
  const AddAchievementDetailsScreen({super.key});

  @override
  State<AddAchievementDetailsScreen> createState() =>
      _AddEducationDetailsScreenState();
}

class _AddEducationDetailsScreenState extends State<AddAchievementDetailsScreen>
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
    textControllers = List.generate(4, (index) => TextEditingController());
    super.initState();
  }

  List<TextEditingController> textControllers = [];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.months.value = "";
  }

  String dropdownvalue = '1 Month';

  var items = [
    '1 Month',
    '2 Month',
    '3 Month',
    '4 Month',
    '5 Month',
    '6 Month',
    '7 Month',
    '8 Month',
    '9 Month',
    '10 Month',
    '11 Month',
  ];

  var achivementDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          context, "Add Achievement Details"),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenSize.fSize_20()),
            appFunctionController.personalInfoTextField(
              context,
              "Award Title",
              textControllers[0],
              TextInputType.name,
            ),
            appFunctionController.personalInfoTextField(
              context,
              "Issuer Name",
              textControllers[1],
              TextInputType.name,
            ),
            Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_14()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appAllTextFieldController.addAchievementsTextField(context,
                      textControllers[2], "Year", TextInputType.number),
                  Container(
                    width: ScreenSize.fSize_150(),
                    height: ScreenSize.fSize_45(),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border(
                        bottom: BorderSide(
                            color: appColorController.boxColor, width: 2),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Month",
                            style: appFontStyleData.workTextStyle,
                          ),
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    textController.months.value == ""
                                        ? "Please Select"
                                        : textController.months.toString(),
                                    style: appFontStyleData.achievements,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: ScreenSize.fSize_20()),
                                    child: Image.asset(
                                      "assets/image/local image/down-arrow.png",
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                color: Colors.transparent,
                                height: ScreenSize.fSize_20(),
                                width: ScreenSize.fSize_140(),
                                child: DropdownButton(
                                    isExpanded: true,
                                    isDense: false,
                                    underline: Container(),
                                    // underline: Image.asset("assets/icons/down-arrow.png",height: ScreenSize.fSize_10()),
                                    icon: const Icon(Icons.arrow_drop_down,
                                        size: 0, color: Color(0xFF768AAB)),
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items,
                                            style: const TextStyle(
                                                color: Colors.black)),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      var aa;
                                      setState(() {
                                        aa = dropdownvalue =
                                            newValue!.replaceAll("Month", "");
                                        textController.months.value = aa;
                                      });
                                    }),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: ScreenSize.fSize_20()),
            appAllTextFieldController.objectiveFiels(
              context,
              textControllers[3],
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
                      textControllers[3].text.isEmpty) {
                    tostController.errorTost();
                  } else {
                    tostController.successTost();
                    achivementDetails = prefs.setStringList(
                      "achivement",
                      [
                        textControllers[0].text,
                        textControllers[1].text,
                        textControllers[2].text,
                        textControllers[3].text,
                        textController.months.string,
                      ],
                    );
                    achivement.value.add(
                      [
                        textControllers[0],
                        textControllers[1],
                        textControllers[2],
                        textControllers[3],
                        textController.months.string,
                      ],
                    );
                    Get.back();
                  }
                  achivement.refresh();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
