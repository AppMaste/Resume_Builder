import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';

import '../../widgets/global/MediaQuery/size.dart';
import '../functions/Notifications/Notification.dart';


ADController tapController = Get.put(ADController());


class ADController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Rx Count = 1.obs;

  showbuttonad(BuildContext context, String nextpage, String pagename, var aa) async {
    if (firebaseConfig.value["Resume_Counter"] == Count.value) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () {
              return Future.value(false);
            },
            child: Center(
              child: AlertDialog(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: ScreenSize.fSize_30(),
                        height: ScreenSize.fSize_30(),
                        child: const CircularProgressIndicator()),
                    const Text("Ad is loading..."),
                  ],
                ),
              ),
            ),
          );
        },
      );
      if (firebaseConfig.value[pagename]["Resume_Interstitial_type"] == 'admob') {
        InterstitialAd.load(
          adUnitId: firebaseConfig.value[pagename]["Resume_Interstitial_Admob"],
          // adUnitId: "/6499/example/interstitial",
          request: const AdManagerAdRequest(),
          adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
            ad.show();
            Navigator.pop(context);
            nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
            Count.value = 1;
          }, onAdFailedToLoad: (error) {
            InterstitialAd.load(
              adUnitId: firebaseConfig.value[pagename]["Resume_Interstitial"],
              // adUnitId: "/6499/example/interstitial",
              request: const AdManagerAdRequest(),
              adLoadCallback: InterstitialAdLoadCallback(onAdLoaded: (ad) {
                ad.show();
                Navigator.pop(context);
                nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
                Count.value = 1;
              }, onAdFailedToLoad: (error) {
                Navigator.pop(context);
                nextpage != 'stop' ? Get.offNamed(nextpage, arguments: aa) : null;
                Count.value = 1;
              }),
            );
          }),
        );
      }

      if (firebaseConfig.value[pagename]["Resume_Interstitial_type"] == 'fb') {
        FacebookInterstitialAd.loadInterstitialAd(
          placementId: firebaseConfig.value["Resume_Interstitial_Facebook"],
          // placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
          listener: (result, value) {
            if (result == InterstitialAdResult.LOADED) {
              FacebookInterstitialAd.showInterstitialAd();
              Navigator.pop(context);
              nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
              Count.value = 1;
            }
            if (result == InterstitialAdResult.ERROR) {
              Navigator.pop(context);
              nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
              Count.value = 1;
            }
          },
        );
      }
      if (firebaseConfig.value[pagename]["Resume_Interstitial_type"] == "url") {
        _launchURL(firebaseConfig.value[pagename]["Resume_Url"]);
        Future.delayed(
          const Duration(seconds: 2),
              () {
            Navigator.pop(context);
            nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
            Count.value = 1;
          },
        );
      }
    } else {
      // Get.to(() => const FirstPage());
      nextpage != 'stop' ? Get.toNamed(nextpage, arguments: aa) : null;
      Count.value++;
      // controller.incrementClickCount(context, 'FirstPage');
    }
  }
}