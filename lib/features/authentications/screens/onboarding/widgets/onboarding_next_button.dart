import 'package:ecommerce/common/widgets/button/elevated_button.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: USizes.spaceBtwItems,
        child: UElevatedButton(onPressed: (){}, child: Text('next'))
    );
  }
}
