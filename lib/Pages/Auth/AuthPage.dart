import 'package:flutter/material.dart';
import 'package:mechat/Pages/Auth/Widgets/AuthPageBody.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeHeadling.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  WelcomeHeadling(),
                  SizedBox(
                    height: 40,
                  ),
                  AuthPageBody(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
