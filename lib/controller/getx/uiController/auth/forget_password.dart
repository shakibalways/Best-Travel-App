import 'package:best_travel_app/controller/api/auth/forget_password.dart';
import 'package:best_travel_app/views/pages/auth/otp/otp_authentication.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController forgetPassController = TextEditingController();
  forgetPassFun() async {
    bool status = await ForgetPasswordService.forgetPassService(
      email: forgetPassController.text,
    );
    if (status) {
      Get.to(() => const OtpAuthenticationPage());
    }
  }

  @override
  void onInit() {
    forgetPassController.text = "shakib@gmail.com";
    super.onInit();
  }

  @override
  void dispose() {
    forgetPassController.dispose();
    super.dispose();
  }
}
