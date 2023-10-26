// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_builder/App%20Data/services/Controller/Tap%20Controller.dart';

// import 'package:resume_builder_app/App%20Data/pages/Create%20Resume/Sub%20Screen/Interest%20Screen/Add%20Interests%20Screen.dart';
// import 'package:resume_builder_app/App%20Data/utils/color.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/color.dart';
import '../../../../utils/images.dart';
import '../../../../utils/style.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/features/TextController.dart';
import '../../../../widgets/global/MediaQuery/size.dart';
import 'Add Interests Screen.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen>
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

  GetData() async {
    // final prefs = await SharedPreferences.getInstance();
    // interest.value =  (await prefs.getStringList('interst'))!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarController.customAppBarController(context, "Interest"),
      floatingActionButton: FloatingActionBubble(
        items: [
          Bubble(
            title: "See All",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              tapController.showbuttonad(
                  context, "/AddInterestsScreen", "/InterestScreen", "");
              // Get.to(() => const AddInterestsScreen());
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
      body: Obx(
        () => interest.value.isNotEmpty
            ? ListView.builder(
                itemCount: interest.value.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenSize.fSize_10(),
                      horizontal: ScreenSize.fSize_15(),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: interest3.value[index] == true
                            ? Colors.red[200]
                            : appColorController.boxColor.withOpacity(0.3),
                        border: Border.all(
                          color: interest3.value[index] == true
                              ? Colors.red
                              : appColorController.boxColor,
                        ),
                        borderRadius:
                            BorderRadius.circular(ScreenSize.fSize_10()),
                      ),
                      child: ListTile(
                        title: Text(interest.value[index]),
                        leading: Image.asset(interest2.value[index],
                            color: Colors.black, scale: 14.0),
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

/* body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              height: ScreenSize.fSize_20(),
              width: ScreenSize.fSize_140(),
              child: DropdownButton(
                  isExpanded: true,
                  isDense: false,
                  dropdownColor: appColorController.dividerColor,
                  underline: Container(),
                  // underline: Image.asset("assets/icons/down-arrow.png",height: ScreenSize.fSize_10()),
                  icon: const Icon(Icons.arrow_drop_down,
                      size: 0, color: Color(0xFF768AAB)),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items,
                          style: GoogleFonts.openSans(color: Colors.black)),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    var aa;
                    setState(() {
                      aa = dropdownvalue = newValue!.replaceAll("Month", "");
                      textController.months.value = aa;
                    });
                  }),
            ),
            Text(
              textController.months.value == ""
                  ? "Please Select"
                  : textController.months.toString(),
              style: GoogleFonts.openSans(
                color: Colors.black,
              ),
            ),
            Image.asset(""),
          ],
        ),
      ),*/
