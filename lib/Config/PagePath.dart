import 'package:get/get.dart';
import 'package:mechat/Pages/Auth/AuthPage.dart';
import 'package:mechat/Pages/Chat/ChatPage.dart';
import 'package:mechat/Pages/Home/HomePage.dart';
import 'package:mechat/Pages/UserProfile/ProfilePage.dart';
import 'package:mechat/Pages/UserProfile/UpdateProfile.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => const AuthPage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: "/homePage",
    page: () => const HomePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: "/chatPage",
    page: () => const ChatPage(),
    transition: Transition.leftToRight,
  ),
  // GetPage(
  //   name: "/profilePage",
  //   page: () => const UserProfilePage(),
  //   transition: Transition.leftToRight,
  // ),
  // GetPage(
  //   name: "/updateProfilePage",
  //   page: () => const UserUpdateProfile(),
  //   transition: Transition.leftToRight,
  // ),
];
