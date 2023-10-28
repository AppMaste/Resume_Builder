import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:resume_builder/ruf.dart';

import 'App Data/pages/Choose Template Screen/Choose Template Screen.dart';
import 'App Data/pages/Choose Template Screen/Template Preview Screen.dart';
import 'App Data/pages/Create Resume/Create Resume Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Achievements/Achievements Details Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Achievements/Achievements Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Add More Section Screen/Add More Section Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Education Screen/Add Education Details Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Education Screen/Education Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Hobbies Screen/Add Hobbies Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Hobbies Screen/Hobbies Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Interest Screen/Add Interests Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Interest Screen/Interest Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Known Language/Known Language Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Known Language/Known Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Objective Screen/Add objective Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Objective Screen/Object Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Personal information Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Projects Screen/Projects Details Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Projects Screen/Projects Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Reference Screen/Add Reference Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Reference Screen/Reference Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Skills Screen/Add Skills Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Skills Screen/Skills Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Social/Add Social Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Social/Social Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Work Experience Screen/Add Work Experience Screen.dart';
import 'App Data/pages/Create Resume/Sub Screen/Work Experience Screen/Work Experience Screen.dart';
import 'App Data/pages/First Screen/Main Screen.dart';
import 'App Data/pages/First Screen/Resume Builder Screen.dart';
import 'App Data/pages/Starting Screens/Main Screen/Splash Screen.dart';
import 'App Data/pages/View and Share Resume Screen/View and Share Resume Screen.dart';
import 'App Data/services/functions/Appopen/Appopen Ad.dart';
import 'App Data/services/functions/Notifications/Notification.dart';

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

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
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


  FirebaseMessaging.onBackgroundMessage(
          (message) => firebasemessgingBackgroundMessagingHandler(message));
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
        "/MainScreen": (context) => const MainScreen(),
        "/ResumeBuilderScreen": (context) => const ResumeBuilderScreen(),
        "/CreateResumeScreen": (context) => const CreateResumeScreen(),
        "/ChooseTemplateScreen": (context) =>  ChooseTemplateScreen(),
        "/ViewAndShareResumeScreen": (context) =>  ViewAndShareResumeScreen(),
        "/AddMoreSectionScreen": (context) =>  AddMoreSectionScreen(),
        "/PersonalInformationScreen": (context) => const PersonalInformationScreen(),
        "/ObjectiveScreen": (context) => const ObjectiveScreen(),
        "/AddObjectiveScreen": (context) => const AddObjectiveScreen(),
        "/WorkExperienceScreen": (context) => const WorkExperienceScreen(),
        "/AddWorkExperienceScreen": (context) => const AddWorkExperienceScreen(),
        "/EducationScreen": (context) => const EducationScreen(),
        "/AddEducationDetailsScreen": (context) => const AddEducationDetailsScreen(),
        "/ProjectDetailsScreen": (context) => const ProjectDetailsScreen(),
        "/AddProjectDetailsScreen": (context) => const AddProjectDetailsScreen(),
        "/AchievementsScreen": (context) => const AchievementsScreen(),
        "/AddAchievementDetailsScreen": (context) => const AddAchievementDetailsScreen(),
        "/KnownLanguageScreen": (context) => const KnownLanguageScreen(),
        "/AddKnownLanguageScreen": (context) =>  AddKnownLanguageScreen(),
        "/SkillsScreen": (context) => const SkillsScreen(),
        "/AddSkillsScreen": (context) => const AddSkillsScreen(),
        "/ReferenceScreen": (context) => const ReferenceScreen(),
        "/AddReferenceScreen": (context) => const AddReferenceScreen(),
        "/InterestScreen": (context) => const InterestScreen(),
        "/AddInterestsScreen": (context) => const AddInterestsScreen(),
        "/HobbiesScreen": (context) => const HobbiesScreen(),
        "/AddHobbiesScreen": (context) => const AddHobbiesScreen(),
        "/SocialScreen": (context) => const SocialScreen(),
        "/TemplatePreviewScreen": (context) =>  TemplatePreviewScreen(),
        "/AddSocialScreen": (context) =>  const AddSocialScreen(),
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
