import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/controller/getx/uiController/onboarding.dart';
import 'package:best_travel_app/views/pages/auth/sign_up/sign_up.dart';
import 'package:best_travel_app/views/pages/onboarding/widgets/onboarding1.dart';
import 'package:best_travel_app/views/pages/onboarding/widgets/onboarding2.dart';
import 'package:best_travel_app/views/pages/onboarding/widgets/onboarding3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.onLastPage.value = (index == 2);
            },
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomText(
                  text: "Skip",
                  onTap: () {
                    controller.pageController.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                ),
                Obx(
                  () => controller.onLastPage.value
                      ? MyCustomText(
                          text: "Done",
                          onTap: () {
                            Get.to(() => const SignUpPage());
                          },
                        )
                      : MyCustomText(
                          text: "Next",
                          onTap: () {
                            controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
