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
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleContainer(
                  containerColor: Color(0x5ae09c96),
                  text: "Google",
                  tColor: Color(0xffD44638),
                ),
                SizedBox(
                  width: 10
                ),
                DoubleContainer(
                  containerColor: Color(0xffAEC5F3),
                  text: "Facebook",
                  tColor: Color(0xff4267B2),
                ),
              ],
            ),
            SizedBox(
              height: 25
            ),
            MyCustomText(
              text: "OR",
              fSize: 15,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  MyUserTextField(),
                  SizedBox(
                    height: 10
                  ),
                  MyEmailTextField(),
                  SizedBox(
                    height: 10
                  ),
                  MyPasswordTextField(),
                  SizedBox(
                    height: 10
                  ),
                  MyConfirmPassTextField(),
                ],
              ),
            ),
            SizedBox(
              height: 25
            ),
            MyCustomButton(
              buttonName: "Register",
              fWieght: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
