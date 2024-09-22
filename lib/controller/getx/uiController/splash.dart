import 'dart:async';
import 'package:best_travel_app/views/pages/welcome/welcome.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  getSplashNavigate() {
    Timer(
      const Duration(
        seconds: 3
      ),
      () => Get.offAll(
        () => const WelcomePage(),
      ),
    );
  }

  @override
  void onInit() {
    getSplashNavigate();
    super.onInit();
  }
}
