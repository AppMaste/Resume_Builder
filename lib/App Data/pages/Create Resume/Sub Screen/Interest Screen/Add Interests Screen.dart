// ignore_for_file: invalid_use_of_protected_member, unrelated_type_equality_checks, list_remove_unrelated_type

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:resume_builder_app/App%20Data/services/functions/App%20Functions/app%20Functions.dart';
// import 'package:resume_builder_app/App%20Data/utils/color.dart';
// import 'package:resume_builder_app/App%20Data/widgets/features/Appbar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../utils/color.dart';
import '../../../../widgets/features/Appbar.dart';
import '../../../../widgets/global/MediaQuery/size.dart';

var interest = [].obs;
var interest2 = [].obs;
var interest3 = [].obs;

var interestSelect = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
].obs;

var interestName = [
  'Travel',
  'Music',
  'Writing',
  'Chess',
  'Gaming',
  'Yoga',
  'Singing',
  'Magic',
  'Photography',
  'Dancing',
  'Meditation',
].obs;

var interestImage = [
  "assets/image/Template Image/Resume 8 Image/travel.png",
  "assets/image/Template Image/Resume 8 Image/headphones.png",
  "assets/image/Template Image/Resume 8 Image/writing.png",
  "assets/image/Template Image/Resume 8 Image/chess.png",
  "assets/image/Template Image/Resume 8 Image/gaming.png",
  "assets/image/Template Image/Resume 8 Image/yoga.png",
  "assets/image/Template Image/Resume 8 Image/singing.png",
  "assets/image/Template Image/Resume 8 Image/magic.png",
  "assets/image/Template Image/Resume 8 Image/photography.png",
  "assets/image/Template Image/Resume 8 Image/dance.png",
  "assets/image/Template Image/Resume 8 Image/meditation.png",
].obs;

class AddInterestsScreen extends StatefulWidget {
  const AddInterestsScreen({super.key});

  @override
  State<AddInterestsScreen> createState() => _AddInterestsScreenState();
}

class _AddInterestsScreenState extends State<AddInterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarController.customAppBarController(context, "Add interests"),
      body: Obx(
        () => ListView.builder(
          itemCount: interestImage.value.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: ScreenSize.fSize_10(),
                horizontal: ScreenSize.fSize_15(),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: interestSelect.value[index] == true
                      ? Colors.red[200]
                      : appColorController.boxColor.withOpacity(0.3),
                  border: Border.all(
                    color: interestSelect.value[index] == true
                        ? Colors.red
                        : appColorController.boxColor,
                  ),
                  borderRadius: BorderRadius.circular(ScreenSize.fSize_10()),
                ),
                child: ListTile(
                  focusColor: Colors.red,
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        backgroundColor: appColorController.boxColor,
                        title: Text(
                          interestName[index],
                          style:
                              GoogleFonts.openSans(fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        content:
                            const Text("Are You Sure Adding?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              var aa = interestName.removeAt(index);
                              var bb = interestImage.removeAt(index);
                              var cc = interestSelect.removeAt(index);
                              interest.refresh();
                              interest2.refresh();
                              interest3.refresh();
                              interest.value.add(aa);
                              interest2.value.add(bb);
                              interest3.value.add(cc);
                              print("aaaaaaaaaaaa $aa");
                              print("bbbbbbbbbbbb $bb");
                              print("cccccccccccc $cc");
                              Navigator.of(ctx).pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              child: Text(
                                "Yes",
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                            },
                            child: Text(
                              "No",
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                    // print("objectttttttttt ${interestName.removeAt(index)}");
                    // print("objectttttttttt ${interestImage.removeAt(index)}");
                  },
                  leading: Image.asset(interestImage[index],
                      color: Colors.black, scale: 14.0),
                  title: Padding(
                    padding: EdgeInsets.only(left: ScreenSize.fSize_25()),
                    child: Text(
                      interestName[index],
                      style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
