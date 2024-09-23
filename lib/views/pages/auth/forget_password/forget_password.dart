import 'package:best_travel_app/components/my_custom_button.dart';
import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';


class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {

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
                    text: const TextSpan(children: [
                  TextSpan(text: "Please enter your"),
                  TextSpan(text: 'Email Address/',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 18
                  )),
                  TextSpan(text: "Phone Number"),
                  TextSpan(
                    text: "To reset your password",
                  )
                ])),
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
            const Row(
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
