import 'package:best_travel_app/controller/api/auth/sign_up.dart';
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

  signUpFun() async {
    isLoading.value = true;
    bool status = await SignUpService.signUpService(
      userName: userNameController.text = "Abdullah",
      email: emailController.text = "shakib@gmail.com",
      password: passwordController.text = "123456",
      confirmPass: confirmPasswordController.text = "123456",
    );
    isLoading.value = false;
    if (status) {
      // Get.to(()=>LoginPage());
    }
  }

  void toggleVisibility() {
    isVisibility.value = !isVisibility.value;
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
