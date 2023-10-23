import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

import 'App Data/pages/Starting Screens/Main Screen/Splash Screen.dart';
import 'App Data/services/functions/Notifications/Notification.dart';
// import 'App Data/pages/Starting Screens/Main Screen/Splash Screen.dart';
// import 'App Data/services/functions/Notifications/Notification.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(
          (message) => firebasemessgingBackgroundMessagingHandler(message));

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  // adController.appopenAd();

  return runApp(
    GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
      },
      // home: const SplashScreen(),
    ),
  );
}

// void main() {
//   return runApp(
//      const GetMaterialApp(
//       home: DemoPage(),
//     ),
//   );
// }
