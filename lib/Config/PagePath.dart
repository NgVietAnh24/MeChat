import 'package:get/get.dart';
import 'package:mechat/Pages/Auth/AuthPage.dart';

var pagePath = [
  GetPage(
    name: "/authPage",
    page: () => const AuthPage(),
    transition: Transition.leftToRight,
  ),
];
