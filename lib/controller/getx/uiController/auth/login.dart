import 'package:best_travel_app/controller/api/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isVisibility = true.obs;

  signUpFun() async {
    isLoading.value = true;
    await LoginService.loginService(
      email: emailController.text,
      password: passwordController.text,
    );
    isLoading.value = false;
  }

  @override
  void onInit() {
    emailController.text = "shakib@gmail.com";
    passwordController.text = "123456";
    super.onInit();
  }

  void toggleVisibility() {
    isVisibility.value = !isVisibility.value;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
