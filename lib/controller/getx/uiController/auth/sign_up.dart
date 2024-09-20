import 'package:best_travel_app/controller/api/auth/sign_up.dart';
import 'package:best_travel_app/views/pages/auth/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isVisibility = true.obs;
  RxBool isConfirmVisibility = true.obs;

  signUpFun() async {
    isLoading.value = true;
    bool status = await SignUpService.signUpService(
      userName: userNameController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPass: confirmPasswordController.text,
    );
    isLoading.value = false;
    if (status) {
      Get.to(() => const LoginPage());
    }
    return;
  }

  @override
  void onInit() {
    userNameController.text = "Abdullah";
    emailController.text = "shakib@gmail.com";
    passwordController.text = "123456";
    confirmPasswordController.text = "123456";
    super.onInit();
  }

  void toggleVisibility() {
    isVisibility.value = !isVisibility.value;
  }
  void toggleConfirmVisibility() {
    isConfirmVisibility.value = !isConfirmVisibility.value;
  }

  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
