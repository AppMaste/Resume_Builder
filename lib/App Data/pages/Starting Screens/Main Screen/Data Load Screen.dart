// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:timezone/data/latest.dart' as tz;
import '../../../../main.dart';
import '../../../services/functions/Appopen/Appopen Ad.dart';
import '../../../services/functions/Notifications/Notification Service.dart';
import '../../../services/functions/Notifications/Notification.dart';
import '../../First Screen/Main Screen.dart';

class AppDataLoadScreen extends GetxController with WidgetsBindingObserver {
  AppOpenAdManager appOpenAdManager = AppOpenAdManager();
  bool Paused = false;
  var Loaded = false.obs;

  @override
  void onInit() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification!.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              // color: Colors.blue,
              playSound: true,
              icon: "@mipmap/ic_launcher",
            ),
          ),
        );
      }
    });
    super.onInit();

    WidgetsBinding.instance.addObserver(this);
    initConfig().whenComplete(() {});
    firebaseConfig.value =
        json.decode(remoteConfig.getString("resume"));
    // update();
    Future.delayed(const Duration(seconds: 1), () {
      AdData();
    });
  }

  AdData() async {
    if (firebaseConfig.value.isNotEmpty) {
      adController.appopenAd();
      Future.delayed(const Duration(seconds: 3), () {
        Get.offAll(() => const MainScreen());
      });
    } else {
      firebaseConfig.value =
          await json.decode(remoteConfig.getString("resume"));
      // update();
      AdData();
      tz.initializeTimeZones();
      NotificationService().showNotification(
        1,
        firebaseConfig.value['Resume_Notification_Title'],
        firebaseConfig.value['Resume_Notification_Body'],
        firebaseConfig.value['Resume_Notification_Time'],
      );
    }
  }

  var adCounter = 1.obs;

  AppOpenAd? _appOpenAd;
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.paused) {
      // print("pauseeeee ${Loaded.value}");
      AppOpenAd.loadWithAdManagerAdRequest(
        adUnitId: firebaseConfig.value["Resume_Appopen"],
        // adUnitId: "/6499/example/app-open",
        orientation: AppOpenAd.orientationPortrait,
        adManagerAdRequest: const AdManagerAdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            _appOpenAd = ad;
            Loaded.value = true;
          },
          onAdFailedToLoad: (error) {
            // Handle the error.
            adCounter.value++;
          },
        ),
      );
      Paused = true;
    }
    if (state == AppLifecycleState.resumed) {
      if (adCounter.value ==
              firebaseConfig.value["Resume_Back_Interstitial_Counter"] &&
          Loaded.value == true) {
        adCounter.value = 1;
        // if (Loaded.value == true) {
        _appOpenAd?.show();
        // }
        Paused = false;
      } else {
        adCounter.value++;
      }
    }
  }
}
