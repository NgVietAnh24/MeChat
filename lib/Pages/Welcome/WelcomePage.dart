import 'package:flutter/material.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeFooterButton.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeHeadling.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WelcomeHeadling(),
              WelcomeBody(),
              WelcomeFooterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
