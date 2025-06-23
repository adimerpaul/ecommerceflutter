import 'package:ecommerce/common/widgets/button/elevated_button.dart';
import 'package:ecommerce/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      left: 0,
      right: 0,
      bottom: USizes.spaceBtwItems,
      child: UElevatedButton(
          onPressed: controller.nextPage,
          child: Obx(()=> Text(controller.currentPageIndex.value == 2
                ? 'Get Started'
                : 'Next'),
          )
      ),
    );
  }
}
