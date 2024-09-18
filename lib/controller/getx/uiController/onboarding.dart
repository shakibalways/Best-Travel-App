import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();
  RxBool onLastPage = false.obs;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

}
