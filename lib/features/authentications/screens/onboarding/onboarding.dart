// import 'package:ecommerce/common/widgets/button/elevated_button.dart';
import 'package:ecommerce/features/authentications/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerce/features/authentications/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce/features/authentications/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentications/screens/onboarding/widgets/onboarding_skip_button.dart';
import 'package:ecommerce/utils/constants/images.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/texts.dart';
// import 'package:ecommerce/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              children: [
                OnBoardingPage(
                  animation: UImages.onboarding1Animation,
                  title: UTexts.onBoardingTitle1,
                  subtitle: UTexts.onBoardingSubTitle1,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.onBoardingTitle2,
                  subtitle: UTexts.onBoardingSubTitle2,
                ),
                OnBoardingPage(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.onBoardingTitle3,
                  subtitle: UTexts.onBoardingSubTitle3,
                )
              ],
            ),
            OnBoardingDotNavigation(),
            OnBoardingNextButton(),
            OnBoardingSkipButton()
          ],
        )
      )
    );
  }
}





