import 'package:flutter/material.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeBody.dart';
import 'package:mechat/Pages/Welcome/Widgets/WelcomeHeadling.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              WelcomeHeadling(),
              SizedBox(
                height: 60,
              ),
              WelcomeBody(),
              SizedBox(
                height: 60,
              ),
              SlideAction(
                onSubmit: () {},
                innerColor: Theme.of(context).colorScheme.primary,
                outerColor: Theme.of(context).colorScheme.primaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
