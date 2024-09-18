import 'package:best_travel_app/components/double_container.dart';
import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/views/pages/auth/login/widget/my_email_text_field.dart';
import 'package:best_travel_app/views/pages/auth/login/widget/my_password_text_field.dart';
import 'package:best_travel_app/views/pages/auth/sign_up/widget/my_confirm_pass_text_field.dart';
import 'package:best_travel_app/views/pages/auth/sign_up/widget/my_user_text_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyCustomText(
                    text: "Register",
                    fSize: 40,
                    fWeight: FontWeight.bold,
                    color: Color(0xff191C32),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      DoubleContainer(
                        containerColor: Color(0x5ae09c96),
                        text: "Google",
                        tColor: Color(0xffD44638),
                      ),
                      SizedBox(width: 10,),
                      DoubleContainer(
                        containerColor: Color(0xffAEC5F3),
                        text: "Facebook",
                        tColor: Color(0xff4267B2),
                      ),
                    ],
                  ),
                ],
              ),
              const MyCustomText(
                text: "OR",
                fSize: 15,
                color: Colors.grey,
              ),
              Column(
                children: [
                  MyUserTextField(),
                  SizedBox(height: 10),
                  MyEmailTextField(),
                  SizedBox(height: 10),
                  MyPasswordTextField(),
                  SizedBox(height: 10),
                  MyConfirmPassTextField(),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  const MyCustomButton(
                    buttonName: "Register",
                    fSize: 18,
                    color: Colors.white,
                    fWieght: FontWeight.w500,
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
                      // Get.to(() => SignInPage());
                    },
                    child: const MyCustomText(
                      text: "LOGIN",
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
