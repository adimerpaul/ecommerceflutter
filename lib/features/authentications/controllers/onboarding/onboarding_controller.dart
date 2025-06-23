import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController  extends GetxController{
  static OnBoardingController get instance => Get.find();
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  updatePageIndicator(index) {
    currentPageIndex.value = index;
  }
  dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }
  nextPage(){
    if (currentPageIndex.value < 2) {
      currentPageIndex.value++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      skipPage();
    }
  }
  skipPage(){}
}