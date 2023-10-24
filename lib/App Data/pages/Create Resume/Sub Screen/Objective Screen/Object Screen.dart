import 'dart:developer';

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../services/functions/App Functions/Tost Function.dart';
import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextController.dart';
import '../../../../widgets/features/TextField.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Add objective Screen.dart';

var object = [
  TextEditingController(
      text:
          "Hey, this is my homepage, so I have to say something about myself. Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-description. I hope that my impression about myself and your impression about me are not so different. Here it goes."),
].obs;

class ObjectiveScreen extends StatefulWidget {
  const ObjectiveScreen({super.key});

  @override
  State<ObjectiveScreen> createState() => _ObjectiveScreenState();
}

class _ObjectiveScreenState extends State<ObjectiveScreen>
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
              title: "Add Objective",
              iconColor: Colors.red,
              bubbleColor: Colors.white,
              titleStyle: GoogleFonts.beVietnamPro(
                fontSize: 16,
                color: const Color(0xFF658583),
              ),
              onPress: () async {
                setState(() {});
                _animationController.reverse();
                object.value.add(TextEditingController());
                log("HEEEEEEEEE $object");
                // Get.to(() =>  const AddObjectiveScreen(),arguments: object);
              },
              icon: Icons.info_outline_rounded,
            ),
            Bubble(
              title: "Save Objective",
              iconColor: Colors.red,
              bubbleColor: Colors.white,
              titleStyle: GoogleFonts.beVietnamPro(
                fontSize: 16,
                color: const Color(0xFF658583),
              ),
              onPress: () {
                _animationController.reverse();
                // final list = object.map((element) => element).toList();
                tapController.showbuttonad(
                    context, "/AddObjectiveScreen", "/ObjectiveScreen", "");
                // Get.to(() => const AddObjectiveScreen());
              },
              icon: Icons.save,
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
        appBar: appbarController.customAppBarController(context, "Objective"),
        body: Obx(
          () => object.value.isNotEmpty
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: ScreenSize.horizontalBlockSize! * 160,
                        // color: Colors.red,
                        child: ListView.builder(
                          itemCount: object.length,
                          itemBuilder: (context, index) {
                            return appAllTextFieldController.objectiveFiels(
                                context,
                                object.value[index],
                                "Objective",
                                TextInputType.name);
                          },
                        ),
                      ),
                      appFunctionController.createResumeButton(
                        context,
                        "SAVE",
                        () async {
                          // final prefs = await SharedPreferences.getInstance();
                          //
                          // if (textController.objectiveController.value.text.isEmpty) {
                          //   tostController.errorTost();
                          // } else {
                          //   tostController.successTost();
                          //   object = prefs.setString(
                          //       "Object", textController.objectiveController.value.text);
                          // }
                        },
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Text(
                    "Not Created",
                    style: GoogleFonts.openSans(),
                  ),
                ),
        ));
  }
}
