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
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextController.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var reference = [].obs;

class AddReferenceScreen extends StatefulWidget {
  const AddReferenceScreen({super.key});

  @override
  State<AddReferenceScreen> createState() => _AddReferenceScreenState();
}

class _AddReferenceScreenState extends State<AddReferenceScreen>
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

  var referenceDetails;

  List<TextEditingController> textControllers = [];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backController.showBackButton(context, "/AddReferenceScreen");
        return Future(() => false);
      },
      child: Scaffold(
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
        appBar: appbarController.customAppBarController(context, 'Add Reference'),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  appFunctionController.personalInfoTextField(
                    context,
                    "Reference Name",
                    textControllers[0],
                    TextInputType.name,
                  ),
                  appFunctionController.personalInfoTextField(
                    context,
                    "Reference Address",
                    textControllers[1],
                    TextInputType.streetAddress,
                  ),
                  appFunctionController.personalInfoTextField(
                    context,
                    "Reference Number",
                    textControllers[2],
                    TextInputType.phone,
                  ),
                  appFunctionController.personalInfoTextField(
                    context,
                    "Reference Email",
                    textControllers[3],
                    TextInputType.emailAddress,
                  ),
                  SizedBox(height: ScreenSize.fSize_40()),
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
                          referenceDetails = prefs.setStringList(
                            "reference",
                            [
                              textControllers[0].text,
                              textControllers[1].text,
                              textControllers[2].text,
                              textControllers[3].text,
                            ],
                          );
                          reference.add(
                            [
                              textControllers[0],
                              textControllers[1],
                              textControllers[2],
                              textControllers[3],
                            ],
                          );
                          Get.back();
                        }
                        reference.refresh();
                      },
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_50()),
                ],
              ),
            ),
            resumeBannerADController.showBanner("/AddReferenceScreen")
          ],
        ),
      ),
    );
  }
}
