import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:best_travel_app/views/pages/auth/forget_password/widget/my_forget_password_field.dart';
import 'package:best_travel_app/views/pages/auth/otp/otp_authentication.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController forgetPassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyCustomText(
                    text: "Forget Password",
                    fWeight: FontWeight.bold,
                    fSize: 25,
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: "Please enter your"),
                        TextSpan(
                          text: ' Email Address / ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                              color: Colors.black),
                        ),
                        TextSpan(
                            text: "Phone Number",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22,
                                color: Colors.black)),
                        TextSpan(
                          text: " To reset your password",
                        )
                      ],
                    ),
                  ),
                  const MyCustomText(
                    maxLines: 2,
                    fSize: 18,
                    fWeight: FontWeight.w600,
                    color: Colors.grey,
                    text: "  ",
                  ),
                ],
              ),
              const SizedBox(height: 30),
              MyForgetPasswordField(emailController: forgetPassController),
              const SizedBox(
                height: 50,
              ),
               MyCustomButton(
                onTap: (){
                  Get.to(()=>OtpAuthenticationPage());
                },
                buttonName: 'Verify',
                color: Colors.white,
                fWieght: FontWeight.w700,
                fSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
