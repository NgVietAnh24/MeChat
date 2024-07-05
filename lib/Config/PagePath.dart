import 'package:get/get.dart';
import 'package:mechat/Pages/Auth/AuthPage.dart';
import 'package:mechat/Pages/Chat/ChatPage.dart';
import 'package:mechat/Pages/Home/HomePage.dart';
import 'package:mechat/Pages/Profile/ProfilePage.dart';
import 'package:mechat/Pages/Profile/Widgets/UpdateProfile.dart';

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
  GetPage(
    name: "/profilePage",
    page: () => const ProfilePage(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: "/updateProfilePage",
    page: () => const UpdateProfile(),
    transition: Transition.leftToRight,
  ),
];
