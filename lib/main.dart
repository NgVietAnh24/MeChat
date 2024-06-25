import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mechat/Config/Themes.dart';
import 'package:mechat/Pages/SplacePage/SplacePage.dart';
import 'package:mechat/Pages/Welcome/WelcomePage.dart';
import 'firebase_options.dart';
import './screens/login.dart'; // Import màn hình đăng nhập

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
    return MaterialApp(
      title: 'Me Chat',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const WelcomePage(),
    );
  }
}
