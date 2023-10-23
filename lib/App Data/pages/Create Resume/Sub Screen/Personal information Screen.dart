// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print, invalid_use_of_protected_member

import 'dart:developer';
import 'dart:io';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../services/functions/App Functions/Tost Function.dart';
import '../../../services/functions/App Functions/app Functions.dart';
import '../../../utils/color.dart';
import '../../../widgets/features/Appbar.dart';
import '../../../widgets/features/TextController.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../widgets/global/MediaQuery/size.dart';

var PERSONAL = [].obs;

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen>
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

  var profectionDetails;

  List<TextEditingController> textControllers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add Section",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
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
          context, "Personal Information"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              GestureDetector(
                onTap: () {
                  _getFromGallery();
                },
                child: textController.profileImage != null
                    ? Container(
                        height: ScreenSize.fSize_120(),
                        width: ScreenSize.fSize_120(),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: appColorController.boxColor, width: 2.5),
                            image: DecorationImage(
                                image: FileImage(textController.profileImage),
                                fit: BoxFit.cover),
                            color: Colors.transparent,
                            shape: BoxShape.circle),
                      )
                    : Container(
                        height: ScreenSize.fSize_120(),
                        width: ScreenSize.fSize_120(),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/image/Icons/Profile.png"),
                            ),
                            color: Colors.transparent,
                            shape: BoxShape.circle),
                      ),
              ),
              // Image.asset("assets/image/Icons/Profile.png"),
              SizedBox(height: ScreenSize.fSize_20()),
              appFunctionController.personalInfoTextField(
                context,
                "Name",
                textControllers[0],
                TextInputType.name,
              ),
              appFunctionController.personalInfoTextField(
                context,
                "Profession",
                textControllers[1],
                TextInputType.name,
              ),
              appFunctionController.personalInfoTextField(
                context,
                "Email",
                textControllers[2],
                TextInputType.emailAddress,
              ),
              appFunctionController.personalInfoTextField(
                context,
                "Nationality",
                textControllers[3],
                TextInputType.name,
              ),
              appFunctionController.personalInfoTextField(
                context,
                "Phone",
                textControllers[4],
                TextInputType.phone,
              ),
              appFunctionController.personalInfoTextField(
                context,
                "Address",
                textControllers[5],
                TextInputType.streetAddress,
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              appFunctionController.createResumeButton(
                context,
                "SAVE",
                () async {
                  if (textControllers[0].text.isEmpty ||
                      textControllers[1].text.isEmpty ||
                      textControllers[2].text.isEmpty ||
                      textControllers[3].text.isEmpty ||
                      textControllers[4].text.isEmpty ||
                      textControllers[5].text.isEmpty) {
                    tostController.errorTost();
                  } else {
                    if (PERSONAL.isNotEmpty) {
                      tostController.successTost();
                      PERSONAL.clear();
                      PERSONAL.add(
                        [
                          textControllers[0],
                          textControllers[1],
                          textControllers[2],
                          textControllers[3],
                          textControllers[4],
                          textControllers[5],
                        ],
                      );
                    } else {
                      PERSONAL.add(
                        [
                          textControllers[0],
                          textControllers[1],
                          textControllers[2],
                          textControllers[3],
                          textControllers[4],
                          textControllers[5],
                        ],
                      );
                    }
                  }
                  PERSONAL.refresh();
                  print("personal ${PERSONAL.value}");
                },
              ),
              SizedBox(height: ScreenSize.fSize_40()),
              SizedBox(height: ScreenSize.fSize_40()),
            ],
          ),
        ),
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        textController.profileImage = File(pickedFile.path);
        // _cropImage(pickedFile.path);
      });
    }
  }
}
