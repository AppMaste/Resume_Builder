import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

final FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.instance;
RxMap firebaseConfig = {}.obs;

Future initConfig() async {
  await firebaseRemoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await firebaseRemoteConfig.fetchAndActivate();
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
    "Hello..!!", "Resume Builder",
    importance: Importance.high, playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> firebasemessgingBackgroundMessagingHandler(
    RemoteMessage message) async {
  await Firebase.initializeApp();
}