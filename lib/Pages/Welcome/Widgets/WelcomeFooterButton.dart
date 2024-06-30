import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mechat/Config/String.dart';
import 'package:mechat/Config/imges.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeFooterButton extends StatelessWidget {
  const WelcomeFooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {
        Get.offAllNamed("/authPage");
      },
      sliderButtonIcon: Container(
        width: 25,
        height: 25,
        child: SvgPicture.asset(
          AssetsImage.plugSVG,
          width: 25,
        ),
      ),
      text: WelcomePageString.sideToStart,
      textStyle: Theme.of(context).textTheme.labelLarge,
      submittedIcon: SvgPicture.asset(
        AssetsImage.connectSVG,
        width: 25,
      ),
      // animationDuration: Duration(seconds: 3), // Thời gian chạy của hiệu ứng
      // reversed: false,
      // sliderRotate: false, // tắt chuyển động quay tròn icon của slide button
      innerColor: Theme.of(context).colorScheme.primary,
      outerColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}
