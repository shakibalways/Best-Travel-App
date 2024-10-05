import 'package:best_travel_app/views/pages/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/vector/top.png"),
                    const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 30),
                      child: Image.asset("assets/images/vector/bottom.png"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 50,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const OnboardingPage());
                },
                child: Container(
                  height: Get.height * 0.23,
                  width: Get.width * 0.23,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 2),
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 2
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_right_alt_rounded,
                      color: Color(0xff1BBA85),
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
