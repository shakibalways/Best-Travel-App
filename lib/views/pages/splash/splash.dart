import 'package:best_travel_app/controller/getx/uiController/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash/traveler.png"),
            const SizedBox(
              height: 5
            ),
            const Text(
              "Traveler",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Color(0xff1BBA85),
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
