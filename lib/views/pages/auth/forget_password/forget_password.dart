import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/controller/getx/uiController/auth/otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final otpController = Get.put(OtpController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 50,
        ),
        child: Column(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCustomText(
                  text: "Forget Password",
                  fWeight: FontWeight.bold,
                  fSize: 25,
                ),
                SizedBox(height: 10),
                MyCustomText(
                  maxLines: 2,
                  fSize: 18,
                  fWeight: FontWeight.w600,
                  color: Colors.grey,
                  text:
                      "Please enter your email adress /phone number to reset your password",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [],
            ),
            const Spacer(),
            const MyCustomButton(
              buttonName: 'Verify',
              color: Colors.white,
              fWieght: FontWeight.w700,
              fSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
