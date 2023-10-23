import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/color.dart';
import '../../widgets/features/Appbar.dart';
import '../../widgets/global/MediaQuery/size.dart';

class ViewAndShareResumeScreen extends StatelessWidget {
  ViewAndShareResumeScreen({super.key});

  var percent = 0.79;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarController.customAppBarController(context, "Save Resumes"),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              Container(
                height: ScreenSize.fSize_50(),
                width: ScreenSize.fSize_250(),
                decoration: BoxDecoration(
                    color: appColorController.boxColor,
                    borderRadius:
                    BorderRadius.circular(ScreenSize.fSize_100())),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/image/Icons/Create new.png"),
                    Text(
                      "Create New Resume",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenSize.fSize_18(),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: ScreenSize.fSize_30()),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: appColorController.boxColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(
                            ScreenSize.fSize_10(),
                          ),
                          border: Border.all(
                              color: appColorController.boxColor, width: 2)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: ScreenSize.fSize_20(),
                                vertical: ScreenSize.fSize_10()),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Lorem Ipsum",
                                  style: GoogleFonts.openSans(),
                                ),
                                CircularPercentIndicator(
                                  radius: 25.0,
                                  lineWidth: 3.0,
                                  percent: percent,
                                  center: Text(
                                    ((percent) * 100).toStringAsFixed(0),
                                    style: GoogleFonts.openSans(),
                                  ),
                                  progressColor: appColorController.boxColor,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenSize.fSize_20(),
                            ),
                            child: Divider(
                              thickness: 2,
                              color:
                              appColorController.boxColor.withOpacity(0.2),
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenSize.fSize_20(),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Last update: 05/09/2023, 5:13 pm",
                                  style: GoogleFonts.openSans(
                                      fontSize: ScreenSize.fSize_10()),
                                ),
                                SizedBox(width: ScreenSize.fSize_38()),
                                Icon(
                                  Icons.download_rounded,
                                  color: appColorController.boxColor,
                                ),
                                SizedBox(width: ScreenSize.fSize_10()),
                                Icon(
                                  Icons.share_rounded,
                                  color: appColorController.boxColor,
                                ),
                                SizedBox(width: ScreenSize.fSize_10()),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (ctx) =>
                                          AlertDialog(
                                            title: const Text(
                                                "Alert Dialog Box"),
                                            content: const Text(
                                                "You have raised a Alert Dialog Box"),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(ctx).pop();
                                                },
                                                child: Container(
                                                  color: Colors.green,
                                                  padding: const EdgeInsets.all(
                                                      14),
                                                  child: const Text("okay"),
                                                ),
                                              ),
                                            ],
                                          ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.delete_forever,
                                    color: appColorController.boxColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
