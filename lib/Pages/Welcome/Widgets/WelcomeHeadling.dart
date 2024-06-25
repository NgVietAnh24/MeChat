import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mechat/Config/String.dart';
import 'package:mechat/Config/imges.dart';

class WelcomeHeadling extends StatelessWidget {
  const WelcomeHeadling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AssetsImage.appIconSVG,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(AppString.appName,
            style: Theme.of(context).textTheme.headlineLarge),
      ],
    );
  }
}
