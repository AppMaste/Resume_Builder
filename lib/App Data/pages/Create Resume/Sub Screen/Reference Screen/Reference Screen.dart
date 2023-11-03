// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Native%20and%20Banner%20Controller.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';

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
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/ReferenceScreen");
        return Future(() => false);
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionBubble(
          items: [
            Bubble(
              title: "Add Reference",
              iconColor: Colors.red,
              bubbleColor: Colors.white,
              titleStyle: GoogleFonts.beVietnamPro(
                fontSize: 16,
                color: const Color(0xFF658583),
              ),
              onPress: () async {
                _animationController.reverse();
                tapController.showbuttonad(
                    context, "/AddReferenceScreen", "/ReferenceScreen", "");
                // Get.to(() => const AddReferenceScreen());
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
        body: Stack(
          children: [
            Obx(
              () => reference.value.isNotEmpty
                  ? Padding(
                    padding:  EdgeInsets.only(bottom: ScreenSize.fSize_50()),
                    child: ListView.builder(
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
                                    Container(
                                      height: ScreenSize.fSize_55(),
                                      width: ScreenSize.horizontalBlockSize! * 90,
                                      // color: Colors.red,
                                      child: TextField(
                                        controller: reference.value[index][0],
                                        decoration: const InputDecoration(
                                          labelText: "References Name:-",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    CustomPaint(
                                      painter: DottedLinePainter(),
                                      size: const Size(
                                          400, 0), // Adjust the size of the dotted line
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    Container(
                                      height: ScreenSize.fSize_55(),
                                      width: ScreenSize.horizontalBlockSize! * 90,
                                      // color: Colors.red,
                                      child: TextField(
                                        controller: reference.value[index][1],
                                        decoration: const InputDecoration(
                                          labelText: "References Address:-",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    CustomPaint(
                                      painter: DottedLinePainter(),
                                      size: const Size(
                                          400, 0), // Adjust the size of the dotted line
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    Container(
                                      height: ScreenSize.fSize_55(),
                                      width: ScreenSize.horizontalBlockSize! * 90,
                                      // color: Colors.red,
                                      child: TextField(
                                        controller: reference.value[index][2],
                                        decoration: const InputDecoration(
                                          labelText: "References Number:-",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    CustomPaint(
                                      painter: DottedLinePainter(),
                                      size: const Size(
                                          400, 0), // Adjust the size of the dotted line
                                    ),
                                    SizedBox(height: ScreenSize.fSize_4()),
                                    Container(
                                      height: ScreenSize.fSize_55(),
                                      width: ScreenSize.horizontalBlockSize! * 90,
                                      // color: Colors.red,
                                      child: TextField(
                                        controller: reference.value[index][3],
                                        decoration: const InputDecoration(
                                          labelText: "References Mail:-",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                  )
                  : Center(
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
            resumeBannerADController.showBanner("/ReferenceScreen")
          ],
        ),
      ),
    );
  }
}
