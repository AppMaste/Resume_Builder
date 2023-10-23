// ignore_for_file: invalid_use_of_protected_member

import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../services/functions/App Functions/app Functions.dart';
import '../../utils/color.dart';
import '../../utils/images.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';
import '../Choose Template Screen/Choose Template Screen.dart';
import 'Sub Screen/Achievements/Achievements Screen.dart';
import 'Sub Screen/Add More Section Screen/Add More Section Screen.dart';
import 'Sub Screen/Education Screen/Education Screen.dart';
import 'Sub Screen/Hobbies Screen/Hobbies Screen.dart';
import 'Sub Screen/Interest Screen/Interest Screen.dart';
import 'Sub Screen/Known Language/Known Screen.dart';
import 'Sub Screen/Objective Screen/Object Screen.dart';
import 'Sub Screen/Personal information Screen.dart';
import 'Sub Screen/Projects Screen/Projects Screen.dart';
import 'Sub Screen/Reference Screen/Reference Screen.dart';
import 'Sub Screen/Skills Screen/Skills Screen.dart';
import 'Sub Screen/Social/Social Screen.dart';
import 'Sub Screen/Work Experience Screen/Work Experience Screen.dart';

var BUTTON = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  false,
  false,
  false,
  false,
  false,
].obs;
var TITLE = [
  "Personal Information",
  "Objective",
  "Work Experience",
  "Education",
  "Projects",
  "Achievements",
  "Known Languages",
  "Skills",
  "Reference",
  "Interest",
  "Hobbies",
  "Social",
].obs;

var createdList = [].obs;

var imagess = [
  "assets/image/Icons/Personal Information.png",
  "assets/image/Icons/Objective.png",
  "assets/image/Icons/Work Experience.png",
  "assets/image/Icons/Education.png",
  "assets/image/Icons/Projects.png",
  "assets/image/Icons/Achievements.png",
  "assets/image/Icons/Known Languages.png",
  "assets/image/Icons/Skills.png",
  "assets/image/Icons/exchange.png",
  "assets/image/Icons/interest.png",
  "assets/image/Icons/hobbies.png",
  "assets/image/Icons/social.png",
];

var abc;

var pages = [
  const PersonalInformationScreen(),
  const ObjectiveSCreen(),
  const WorkExperienceScreen(),
  const EducationScreen(),
  const ProjectDetailsScreen(),
  const AchievementsScreen(),
  const KnownLanguageScreen(),
  const SkillsScreen(),
  const ReferenceScreen(),
  const InterestScreen(),
  const HobbiesScreen(),
  const SocialScreen(),
];

class CreateResumeScreen extends StatefulWidget {
  const CreateResumeScreen({super.key});

  @override
  State<CreateResumeScreen> createState() => _CreateResumeScreenState();
}

class _CreateResumeScreenState extends State<CreateResumeScreen>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _animation;
  late final AnimationController _animationController;

  @override
  void initState() {
    setState(() {});
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
            title: "Add More Section",
            iconColor: Colors.red,
            bubbleColor: Colors.white,
            titleStyle: GoogleFonts.beVietnamPro(
              fontSize: 16,
              color: const Color(0xFF658583),
            ),
            onPress: () async {
              _animationController.reverse();
              Get.to(() => AddMoreSectionScreen());
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
      appBar: appbarController.customAppBarController(context, "Create Resume"),
      body: Obx(
        () =>  SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: BUTTON.value.length,
                itemBuilder: (context, index) {
                  return BUTTON.value[index] == true
                      ? Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => pages[index]);
                              // navigator!.push(MaterialPageRoute(
                              //   builder: (context) => pages[index],
                              // ));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(ScreenSize.fSize_15()),
                                color:
                                    appColorController.boxColor.withOpacity(0.1),
                                border: Border.all(
                                    color: const Color(0xFF59E2D7), width: 1.5),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(ScreenSize.fSize_15()),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      imagess[index],
                                      scale: 1.7,
                                    ),
                                    SizedBox(width: ScreenSize.fSize_20()),
                                    Container(
                                      color: Colors.transparent,
                                      width: ScreenSize.fSize_210(),
                                      child: Text(
                                        TITLE[index],
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
                        )
                      : Container();
                },
              ),
              SizedBox(height: ScreenSize.fSize_50()),
              GestureDetector(
                onTap: () {
                  Get.to(() => ChooseTemplateScreen());
                },
                child: Container(
                  height: ScreenSize.horizontalBlockSize! * 13,
                  width: ScreenSize.fSize_170(),
                  decoration: BoxDecoration(
                      color: appColorController.boxColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          ScreenSize.fSize_100(),
                        ),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/image/Icons/View.png",
                        scale: 2.2,
                      ),
                      Text(
                        "View Resume",
                        style: GoogleFonts.openSans(
                            color: Colors.white,
                            fontSize: ScreenSize.fSize_16(),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: ScreenSize.fSize_40()),
            ],
          ),
        ),
      ),
    );
  }
}
