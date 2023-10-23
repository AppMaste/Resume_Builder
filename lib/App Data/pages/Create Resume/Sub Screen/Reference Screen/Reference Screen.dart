// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../services/functions/App Functions/app Functions.dart';
import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextController.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import '../Work Experience Screen/Work Experience Screen.dart';
import 'Add Reference Screen.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen>
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
            title: "Add Language",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              Get.to(() => const AddReferenceScreen());
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
      appBar: appbarController.customAppBarController(context, "Reference"),
      body: Obx(
        () => reference.value.isNotEmpty ? ListView.builder(
          itemCount: reference.value.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(ScreenSize.fSize_10()),
                    border: Border.all(
                      width: 2,
                      color: appColorController.boxColor,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: ScreenSize.fSize_10()),
                      Text(
                        "Referens Name:-",
                        style: GoogleFonts.openSans(
                          fontSize: ScreenSize.fSize_10(),
                        ),
                      ),
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 90,
                        // color: Colors.red,
                        child: Text(
                          "${reference.value[index][0]}",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenSize.fSize_15(),
                          ),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      CustomPaint(
                        painter: DottedLinePainter(),
                        size: const Size(
                            400, 0), // Adjust the size of the dotted line
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      Text(
                        "Referens Address:-",
                        style: GoogleFonts.openSans(),
                      ),
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 60,
                        // color: Colors.red,
                        child: Text(
                          "${reference.value[index][1]}",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenSize.fSize_15(),
                          ),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      CustomPaint(
                        painter: DottedLinePainter(),
                        size: const Size(
                            400, 0), // Adjust the size of the dotted line
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      Text(
                        "Referens Number:-",
                        style: GoogleFonts.openSans(),
                      ),
                      Container(
                        child: Text(
                          "${reference.value[index][2]}",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenSize.fSize_15(),
                          ),
                        ),
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      CustomPaint(
                        painter: DottedLinePainter(),
                        size: const Size(
                            400, 0), // Adjust the size of the dotted line
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                      Text(
                        "Referens Email:-",
                        style: GoogleFonts.openSans(),
                      ),
                      Container(
                        child: Text(
                          "${reference.value[index][3]}",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w600,
                            fontSize: ScreenSize.fSize_15(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ) : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                appImageDataController.noDatFound,
                scale: 1.3,
              ),
              Text(
                "No Data Found",
                style: appFontStyleData.resumeBuilder,
              ),
              SizedBox(height: ScreenSize.fSize_10()),
              Text(
                "Create One Now!",
                style: appFontStyleData.workTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
