// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/color.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import '../../Create Resume Screen.dart';

class AddMoreSectionScreen extends StatefulWidget {
  AddMoreSectionScreen({super.key});

  @override
  State<AddMoreSectionScreen> createState() => _AddMoreSectionScreenState();
}

class _AddMoreSectionScreenState extends State<AddMoreSectionScreen>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _animationController;

  var ON = false.obs;

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
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/AddMoreSectionScreen");
        return Future(() => false);
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButton: FloatingActionBubble(
            items: [
              Bubble(
                title: "Add More Section",
                iconColor: Colors.red,
                bubbleColor: Colors.white,
                titleStyle: GoogleFonts.beVietnamPro(
                  fontSize: 16,
                  color: const Color(0xFF658583),
                ),
                onPress: () async {
                  _animationController.reverse();
                  // Get.to(() => AddMoreSectionScreen());
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
              context, "Add More Section"),
          body: Padding(
            padding: EdgeInsets.only(bottom: ScreenSize.fSize_55()),
            child: Obx(
              () => ListView.builder(
                itemCount: TITLE.value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(
                      () => Container(
                        decoration: BoxDecoration(
                          color: appColorController.boxColor.withOpacity(0.3),
                          border: Border.all(
                            color: appColorController.boxColor,
                          ),
                          borderRadius:
                              BorderRadius.circular(ScreenSize.fSize_10()),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(ScreenSize.fSize_15()),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TITLE.value[index],
                                style: appFontStyleData.resumeBuilder,
                              ),
                              CupertinoSwitch(
                                activeColor: appColorController.boxColor,
                                value: BUTTON.value[index],
                                onChanged: (value) async {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  abc = prefs.setBool("key", BUTTON.value[index]);
                                  BUTTON.value[index] = !BUTTON.value[index];
                                  createdList.value.addAll([TITLE.value[index]]);
                                  print(
                                      "button.value[index] ${BUTTON.value[index]}");
                                  BUTTON.refresh();
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )),
    );
  }
}
