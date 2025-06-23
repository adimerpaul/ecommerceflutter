import 'package:ecommerce/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Obx(
      ()=> controller.currentPageIndex.value == 2 ? SizedBox(): Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(onPressed: (){}, child: Text('Skip')),
      ),
    );
  }
}