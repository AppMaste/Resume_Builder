import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Add Social Screen.dart';

class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen>  with SingleTickerProviderStateMixin {
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
              setState(() {});
              Get.to(() => const AddSocialScreen());
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
      appBar: appbarController.customAppBarController(context, "Social"),
      body: Obx(
            () => social.value.isNotEmpty
            ? ListView.builder(
          itemCount: social.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(ScreenSize.fSize_15()),
              child: TextField(
                controller: social.value[index],
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: "hintText",
                  hintStyle: GoogleFonts.openSans(
                    color: const Color(0xFF6E7474),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: appColorController.boxColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 3,
                      color: appColorController.boxColor,
                    ),
                  ),
                ),
              ),
            );
            // return appAllTextFieldController.objectiveFiels(
            //     context, language.value[index], "Objective");
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
