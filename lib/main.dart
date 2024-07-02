import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mechat/Config/PagePath.dart';
import 'package:mechat/Config/Themes.dart';
import 'package:mechat/Pages/Auth/AuthPage.dart';
import 'package:mechat/Pages/HomePage/HomePage.dart';
import 'package:mechat/Pages/SplacePage/SplacePage.dart';
import 'package:mechat/Pages/Welcome/WelcomePage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Me Chat',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      getPages: pagePath,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
