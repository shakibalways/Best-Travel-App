import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/controller/getx/uiController/auth/login.dart';
import 'package:best_travel_app/views/pages/auth/forget_password/forget_password.dart';
import 'package:best_travel_app/views/pages/auth/login/widget/my_email_text_field.dart';
import 'package:best_travel_app/views/pages/auth/login/widget/my_password_text_field.dart';
import 'package:best_travel_app/views/pages/auth/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const MyCustomText(
                text: "Log In",
                fSize: 40,
                fWeight: FontWeight.bold,
                color: Color(0xff191C32)
              ),
              Form(
                key: loginController.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    MyEmailTextField(
                        emailController: loginController.emailController),
                    const SizedBox(
                      height: 25,
                    ),
                    Obx(
                      () => MyPasswordTextField(
                        suffixWidget: GestureDetector(
                            onTap: () {
                              loginController.toggleVisibility();
                            },
                            child: loginController.isVisibility.value
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        passwordController: loginController.passwordController,
                        obscureText: loginController.isVisibility.value,
                      ),
                    ),
                     InkWell(
                      onTap: (){
                        Get.offAll(()=>const ForgetPasswordPage());
                      },
                      child: const MyCustomText(
                        text: "Forget Password?",
                        color: Color(0xff1BBA85),
                        fSize: 18,
                        fWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Obx(
                    () => loginController.isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : MyCustomButton(
                            buttonName: "Log In",
                            fSize: 18,
                            color: Colors.white,
                            fWieght: FontWeight.w500,
                            onTap: () {
                              if (!loginController.formKey.currentState!
                                  .validate()) {
                                return;
                              }
                              loginController.signUpFun();
                            },
                          ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const MyCustomText(
                    text: "Already Have An Account?",
                    fSize: 18,
                    fWeight: FontWeight.w600,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.offAll(() => const SignUpPage());
                    },
                    child: const MyCustomText(
                      text: "Sign Up",
                      fSize: 20,
                      fWeight: FontWeight.w700,
                      lSpacing: 1.5,
                      color: Color(0xff1BBA85),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
