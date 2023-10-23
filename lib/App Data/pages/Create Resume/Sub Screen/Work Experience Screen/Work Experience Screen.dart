// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Add Work Experience Screen.dart';

class WorkExperienceScreen extends StatefulWidget {
  const WorkExperienceScreen({super.key});

  @override
  State<WorkExperienceScreen> createState() => _WorkExperienceScreenState();
}

class _WorkExperienceScreenState extends State<WorkExperienceScreen>
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
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "Add Work Experience",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              Get.to(() => const AddWorkExperienceScreen());
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
      appBar:
          appbarController.customAppBarController(context, "Work Experience"),
      body: Obx(
        () => workList.value.isNotEmpty
            ? ListView.builder(
                itemCount: workList.value.length,
                itemBuilder: (BuildContext context, int index) {
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
                              "Company Name:-",
                              style: GoogleFonts.openSans(
                                fontSize: ScreenSize.fSize_10(),
                              ),
                            ),
                            Container(
                              width: ScreenSize.horizontalBlockSize! * 90,
                              // color: Colors.red,
                              child: Text(
                                "${workList.value[index][0]}",
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
                              "Position:-",
                              style: GoogleFonts.openSans(),
                            ),
                            Container(
                              width: ScreenSize.horizontalBlockSize! * 60,
                              // color: Colors.red,
                              child: Text(
                                "${workList.value[index][1]}",
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Start Date:-",
                                      style: GoogleFonts.openSans(),
                                    ),
                                    Container(
                                      width: ScreenSize.fSize_80(),
                                      child: Text(
                                        "${workList.value[index][2]}",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: ScreenSize.fSize_15(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "End Date:-",
                                      style: GoogleFonts.openSans(),
                                    ),
                                    Container(
                                      width: ScreenSize.fSize_80(),
                                      child: Text(
                                        workList.value[index][5] == "true"
                                            ? "Present"
                                            : workList.value[index][3],
                                        // "asjfbasbf",
                                        style: GoogleFonts.openSans(
                                          fontWeight: FontWeight.w600,
                                          fontSize: ScreenSize.fSize_15(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: ScreenSize.fSize_15()),
                            CustomPaint(
                              painter: DottedLinePainter(),
                              size: const Size(
                                  400, 0), // Adjust the size of the dotted line
                            ),
                            SizedBox(height: ScreenSize.fSize_15()),
                            Text(
                              "Description:-",
                              style: GoogleFonts.openSans(),
                            ),
                            Container(
                              child: Text(
                                "${workList.value[index][4]}",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: ScreenSize.fSize_15(),
                                ),
                              ),
                            ),
                            SizedBox(height: ScreenSize.fSize_10()),
                          ],
                        ),
                      ),
                    ),
                  );
                },
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
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = appColorController.boxColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    double dashWidth = 5;
    double dashSpace = 5;

    double startX = 0.0;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, size.height / 2),
          Offset(startX + dashWidth, size.height / 2), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
