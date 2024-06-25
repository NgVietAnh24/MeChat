import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mechat/Config/String.dart';
import 'package:mechat/Config/imges.dart';
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
            children: [
              SizedBox(
                height: 30,
              ),
              WelcomeHeadling(),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AssetsImage.boyPic),
                  SvgPicture.asset(AssetsImage.connectSVG),
                  Image.asset(AssetsImage.girlPic),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                WelcomePageString.nowYourAre,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
