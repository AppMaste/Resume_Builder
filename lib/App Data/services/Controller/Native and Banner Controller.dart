// ignore_for_file: invalid_use_of_protected_member

import 'package:facebook_audience_network/ad/ad_banner.dart';
import 'package:facebook_audience_network/ad/ad_native.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:resume_builder/main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/global/MediaQuery/size.dart';
import '../functions/Notifications/Notification.dart';

ResumeAppNativeADController resumeNativeADController = Get.put(ResumeAppNativeADController());
ResumeAppBannerADController resumeBannerADController = Get.put(ResumeAppBannerADController());

class ResumeAppNativeADController extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget showNative(String factoryId, String page) {
    NativeAd? nativeAd;
    var isLoaded = false.obs;
    if (firebaseConfig.value[page]["Resume_Native_type"] == "admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: firebaseConfig.value[page]["Resume_Native"],
        // adUnitId: "/6499/example/native",
        listener: NativeAdListener(onAdLoaded: (ad) {
          nativeAd!.load();
          isLoaded.value = true;
          // print("Native ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          // print("Native ad Failed to Load");
        }),
        // factoryId: wantSmallNativeAd ? "listTile" : "listTileMedium",
        factoryId: factoryId,
      );
      nativeAd.load();
    }
    return firebaseConfig.value[page]["Resume_Native_type"] == "admob"
        ? Obx(() => (isLoaded.value)
            ? factoryId == "listTile"
                ? Stack(
                    children: [
                      Container(
                        height: ScreenSize.fSize_160(),
                        width: ScreenSize.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      Container(
                        height: ScreenSize.fSize_250(),
                        width: ScreenSize.fSize_350(),
                        // color: Colors.green,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: AdWidget(
                          ad: nativeAd!,
                        ),
                        // color: Colors.blue,
                      ),
                    ],
                  )
            : factoryId == "listTile"
                ? Container(
                    height: ScreenSize.horizontalBlockSize! * 50,
                    width: ScreenSize.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    height: ScreenSize.fSize_250(),
                    width: ScreenSize.fSize_350(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.black26,
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ))
        : firebaseConfig.value[page]["Resume_Native_type"] == "fb"
            ? Container(
                height: factoryId == "listTile"
                    ? ScreenSize.fSize_150()
                    : ScreenSize.fSize_250(),
                width: ScreenSize.fSize_350(),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 25.0,
                    )
                  ],
                ),
                child: FacebookNativeAd(
                  placementId: firebaseConfig.value["Resume_Native_Facebook"],
                  adType: NativeAdType.NATIVE_AD,
                  height: factoryId == "listTileMedium"
                      ? ScreenSize.fSize_150()
                      : ScreenSize.fSize_250(),
                  width: ScreenSize.fSize_350(),
                  backgroundColor: Colors.white,
                  titleColor: Colors.black,
                  descriptionColor: Colors.grey,
                  buttonTitleColor: Colors.white,
                  buttonColor: const Color(0xFF320B3A).withOpacity(0.8),
                  buttonBorderColor: const Color(0xFFE65A55),
                  listener: (result, value) {
                  },
                ),
              )
            : firebaseConfig.value[page]["Resume_Native_type"] == "null"
                ? Container()
                : GestureDetector(
                    onTap: () {
                      _launchURL(firebaseConfig.value[page]["Resume_Url"]);
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: factoryId == "listTile"
                              ? ScreenSize.fSize_150()
                              : ScreenSize.fSize_250(),
                          width: ScreenSize.fSize_350(),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(firebaseConfig.value[page]
                                      ["Resume_Image_Url"]))),
                        ),
                        Positioned(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ScreenSize.fSize_2()))),
                            height: ScreenSize.fSize_16(),
                            width: ScreenSize.fSize_34(),
                            child: Center(
                                child: Text(
                              "Ad",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenSize.fSize_10()),
                            )),
                          ),
                        ),
                      ],
                    ),
                  );
  }
}


class ResumeAppBannerADController extends GetxController {
  late BannerAd bannerAd;
  int a = 1;

  Widget showBanner(String page) {
    if (firebaseConfig.value[page]["Resume_Banner_type"] == "admob") {
      bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: firebaseConfig.value[page]["Resume_Banner"],
        listener: BannerAdListener(
            onAdLoaded: (ad) {
            },
            onAdFailedToLoad: (ad, error) {}),
        request: const AdRequest(),
      );
      bannerAd.load();
    }

    return firebaseConfig.value[page]["Resume_Banner_type"] == "fb"
        ? Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 50,
        child: FacebookBannerAd(
            placementId: firebaseConfig.value["Resume_Banner_Facebook"],
            bannerSize: BannerSize.STANDARD,
            listener: (result, value) {
            }),
      ),
    )
        : Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 50,
        child: AdWidget(
          ad: bannerAd,
        ),
      ),
    );
  }
}
