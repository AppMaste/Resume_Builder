// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../pages/First Screen/Resume Builder Screen.dart';
import '../../../utils/color.dart';
import '../../../utils/images.dart';
import '../../../utils/style.dart';
import '../../../widgets/global/MediaQuery/size.dart';

AppFunctionController appFunctionController = AppFunctionController();

class AppFunctionController extends GetxController {
  getStartedContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const ResumeBuilderScreen());
          },
          child: Container(
            decoration: BoxDecoration(
              color: appColorController.boxColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(ScreenSize.fSize_100()),
                bottomLeft: Radius.circular(ScreenSize.fSize_100()),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenSize.fSize_10(),
                vertical: ScreenSize.fSize_8(),
              ),
              child: Row(
                children: [
                  SizedBox(width: ScreenSize.fSize_10()),
                  Text(
                    "Get Started",
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: ScreenSize.fSize_20(),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: ScreenSize.fSize_10()),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFFFAFFFF),
                        border: Border.all(
                            color: const Color(0xFFB1F2EF), width: 4)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          appImageDataController.fastArrowRight,
                          scale: 2.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  resumeBuilderTopDesign() {
    return Stack(
      children: [
        Positioned(
          top: ScreenSize.fSize_24(),
          child: Image.asset(
            appImageDataController.Vector2,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          heightFactor: 1.3,
          alignment: Alignment.centerRight,
          child: Image.asset(
            appImageDataController.Vector3,
            height: ScreenSize.horizontalBlockSize! * 34,
          ),
        ),
        Image.asset(
          appImageDataController.Vector1,
          height: ScreenSize.fSize_140(),
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: ScreenSize.fSize_75(), left: ScreenSize.fSize_20()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Resume Builder",
                style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: ScreenSize.fSize_24(),
                    fontWeight: FontWeight.w600),
              ),
              Builder(
                builder: (BuildContext context) {
                  return GestureDetector(
                    onTap: () => Scaffold.of(context).openEndDrawer(),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(ScreenSize.fSize_100()),
                          bottomLeft: Radius.circular(ScreenSize.fSize_100()),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: ScreenSize.fSize_6(),
                          horizontal: ScreenSize.fSize_10(),
                        ),
                        child: Center(
                          child: Image.asset(
                            appImageDataController.settings,
                            scale: 1.8,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  resumeBuilderContainer(
    BuildContext context,
    String title,
    String image,
    var ontap,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
            color: appColorController.boxColor.withOpacity(0.1),
            border: Border.all(color: const Color(0xFF59E2D7), width: 1.5),
          ),
          child: Padding(
            padding: EdgeInsets.all(ScreenSize.fSize_8()),
            child: Row(
              children: [
                Container(
                  height: ScreenSize.fSize_55(),
                  width: ScreenSize.fSize_55(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 2,
                      color: const Color(0xFF59E2D7),
                    ),
                  ),
                  child: Image.asset(
                    image,
                    scale: 1.8,
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_20()),
                Text(
                  title,
                  style: appFontStyleData.resumeBuilder,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  createResumeContainer(
      BuildContext context, String title, String image, var ontap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ScreenSize.fSize_15()),
            color: appColorController.boxColor.withOpacity(0.1),
            border: Border.all(color: const Color(0xFF59E2D7), width: 1.5),
          ),
          child: Padding(
            padding: EdgeInsets.all(ScreenSize.fSize_15()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  scale: 1.7,
                ),
                SizedBox(width: ScreenSize.fSize_20()),
                Container(
                  color: Colors.transparent,
                  width: ScreenSize.fSize_210(),
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w700,
                      fontSize: ScreenSize.fSize_18(),
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  createResumeButton(BuildContext context, String title, var ontap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          width: ScreenSize.horizontalBlockSize! * 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(ScreenSize.fSize_100()),
              color: appColorController.boxColor),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: ScreenSize.fSize_13(),
            ),
            child: Center(
              child: Text(
                title,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: ScreenSize.horizontalBlockSize! * 5.4,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  personalInfoTextField(BuildContext context, String hintText, var controller,var keyboardType) {
    return Padding(
      padding: EdgeInsets.all(ScreenSize.fSize_14()),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            color: const Color(0xFF6E7474),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: appColorController.boxColor, width: 2),
          ),
        ),
      ),
    );
  }

  previewContainer(BuildContext context, String title, String icon, var ontap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: ScreenSize.fSize_50(),
            width: ScreenSize.fSize_50(),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFFB1F2EF),
                width: 3,
              ),
            ),
            child: Image.asset(
              icon,
              scale: 2.0,
            ),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.openSans(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: ScreenSize.fSize_11(),
          ),
        ),
      ],
    );
  }

  shareURL() async {
    return Share.share(
        'hey! check out this new app https://play.google.com/store/search?q=pub%3ADivTag&c=apps',
        subject: 'DivTag Apps Link');
  }

  rateURL() async {
    const url = 'https://play.google.com/store/games?device=windows';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  privacyURL() async {
    const url = 'https://policies.google.com/privacy?hl=en';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
