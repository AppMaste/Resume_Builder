// ignore_for_file: invalid_use_of_protected_member

import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../Notifications/Notification.dart';

AppopenAdController adController = AppopenAdController();

class AppopenAdController extends GetxController {
  AppOpenAd? appOpenAdd;
  AppOpenAd? _appOpenAd;
  static bool isLoaded = false;

  appopenAd() {
    AppOpenAd.load(
      adUnitId: firebaseConfig.value["Resume_Appopen"],
      // adUnitId: "/6499/example/app-open",
      orientation: AppOpenAd.orientationPortrait,
      request: const AdManagerAdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          appOpenAdd = ad;
          ad.show();
        },
        onAdFailedToLoad: (error) {
          AppOpenAd.load(
            adUnitId: firebaseConfig.value["Resume_Appopen"],
            orientation: AppOpenAd.orientationPortrait,
            request: const AdManagerAdRequest(),
            adLoadCallback: AppOpenAdLoadCallback(
              onAdLoaded: (ad) {
                appOpenAdd = ad;
                ad.show();
              },
              onAdFailedToLoad: (error) {},
            ),
          );
        },
      ),
    );
  }
}

class AppOpenAdManager {
  AppOpenAd? _appOpenAd;
  static bool isLoaded = false;

  /// Load an AppOpenAd.
  void loadAd() {
    AppOpenAd.load(
      adUnitId: firebaseConfig.value["Resume_Appopen"],
      orientation: AppOpenAd.orientationPortrait,
      request: const AdManagerAdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          // print("Ad Loaded.................................");
          _appOpenAd = ad;
          _appOpenAd!.show();
          isLoaded = true;
        },
        onAdFailedToLoad: (error) {
          // print("Ad Loaded.................................");
          // Handle the error.
        },
      ),
    );
  }

  bool get isAdAvailable {
    return _appOpenAd != null;
  }
}
