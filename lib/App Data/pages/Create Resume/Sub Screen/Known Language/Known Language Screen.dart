// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Native%20and%20Banner%20Controller.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../services/functions/App Functions/Tost Function.dart';
import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextField.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var language = [
  TextEditingController(text: "English"),
  TextEditingController(text: "Spanish"),
  TextEditingController(text: "French"),
].obs;

class AddKnownLanguageScreen extends StatefulWidget {
  AddKnownLanguageScreen({super.key});

  @override
  State<AddKnownLanguageScreen> createState() =>
      _AddWorkExperienceScreenState();
}

class _AddWorkExperienceScreenState extends State<AddKnownLanguageScreen>
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

  var languageDetails;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/AddKnownLanguageScreen");
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionBubble(
          items: [
            Bubble(
              title: "Add Language",
              iconColor: Colors.red,
              bubbleColor: Colors.white,
              titleStyle: GoogleFonts.beVietnamPro(
                fontSize: 16,
                color: const Color(0xFF658583),
              ),
              onPress: () async {
                setState(() {});
                language.value.add(TextEditingController());
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
            context, "Add Known Language"),
        body: Stack(
          children: [
            Obx(
              () => language.value.isNotEmpty
                  ? SingleChildScrollView(
                    child: Column(
                        children: [
                          Container(
                            // color: Colors.red,
                            height: ScreenSize.horizontalBlockSize! * 150,
                            child: ListView(
                              children: language.value.map((controller) {
                                return Padding(
                                  padding: EdgeInsets.all(ScreenSize.fSize_14()),
                                  child: TextField(
                                    controller: controller,
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                      hintText: "Language Name",
                                      hintStyle: GoogleFonts.openSans(
                                        color: const Color(0xFF6E7474),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: appColorController.boxColor,
                                            width: 2),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Center(
                            child: appFunctionController.createResumeButton(
                              context,
                              "SAVE",
                              () async {
                                language.refresh();
                                tostController.successTost();
                                Get.back();
                                // final prefs = await SharedPreferences.getInstance();
                                // if (textController
                                //     .languageController.value.text.isEmpty) {
                                //   tostController.errorTost();
                                // } else {
                                //   tostController.successTost();
                                //   languageDetails = prefs.setString("language",
                                //       textController.languageController.value.text);
                                // }
                              },
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_50()),
                        ],
                      ),
                  )
                  : Center(
                      child: Text(
                        "Not Created",
                        style: GoogleFonts.openSans(),
                      ),
                    ),
            ),
            resumeBannerADController.showBanner("/AddKnownLanguageScreen")
          ],
        ),
      ),
    );
  }
}
