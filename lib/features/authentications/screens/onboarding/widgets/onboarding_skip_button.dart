import 'package:ecommerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: UDeviceHelper.getAppBarHeight(),
      right: 0,
      child: TextButton(onPressed: (){}, child: Text('Skip')),
    );
  }
}