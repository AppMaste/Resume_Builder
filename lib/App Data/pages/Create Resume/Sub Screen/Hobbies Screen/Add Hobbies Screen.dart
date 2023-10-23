// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../services/functions/App Functions/Tost Function.dart';
import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var hobbies = [
  TextEditingController(text: "Reading Book"),
  TextEditingController(text: "Traveling"),
  TextEditingController(text: "Playing Chess"),
].obs;

class AddHobbiesScreen extends StatefulWidget {
  const AddHobbiesScreen({super.key});

  @override
  State<AddHobbiesScreen> createState() => _AddHobbiesScreenState();
}

class _AddHobbiesScreenState extends State<AddHobbiesScreen>
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

  List<TextEditingController> textControllers = [];

  var hobbiesDetails;

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
              hobbies.value.add(TextEditingController());
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
      appBar: appbarController.customAppBarController(context, "Add Hobbies"),
      body: Obx(
        () => hobbies.value.isNotEmpty
            ? Column(
                children: [
                  Container(
                    // color: Colors.red,
                    height: ScreenSize.horizontalBlockSize! * 160,
                    child: ListView(
                      children: hobbies.value.map((controller) {
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
                        hobbies.refresh();
                        tostController.successTost();
                      },
                    ),
                  )
                ],
              )
            : Center(
                child: Text(
                  "Not Created",
                  style: GoogleFonts.openSans(),
                ),
              ),
      ),
    );
  }
}
