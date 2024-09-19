import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/controller/getx/uiController/auth/otp.dart';
import 'package:best_travel_app/views/pages/auth/otp/widgets/my_custom_otp_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpAuthenticationPage extends StatelessWidget {
  const OtpAuthenticationPage({super.key});

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
                  text: "Verify Code",
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
                      "check your sms inbox, we have sent you the code at +00 000 0000",
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomOtpAuth(
                  controller: otpController.otp1,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp2,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp3,
                ),
                MyCustomOtpAuth(
                  controller: otpController.otp4,
                ),
              ],
            ),
            const Spacer(),
            MyCustomButton(
              onTap: () {
                // Get.to(() => const BottomNavBarPage());
              },
              buttonName: 'Verify',
              color: Colors.white,
              fWieght: FontWeight.w700,
              fSize: 18,
            )
          ],
        ),
      ),
    );
  }
}
