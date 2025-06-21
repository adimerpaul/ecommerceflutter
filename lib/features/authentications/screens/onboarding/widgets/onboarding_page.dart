// import 'package:ecommerce/utils/constants/images.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
// import 'package:ecommerce/utils/constants/texts.dart';
import 'package:ecommerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });

  final String animation;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: USizes.defaultSpace,left: USizes.defaultSpace,top: UDeviceHelper.getAppBarHeight()),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
