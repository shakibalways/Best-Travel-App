import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyForgetPasswordField extends StatelessWidget {
  const MyForgetPasswordField({
    super.key,
    required this.forgetPassController,
  });
  final TextEditingController forgetPassController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: forgetPassController,
      decoration: InputDecoration(
        hintText: "Email",
        prefixIcon: const Icon(Icons.email_outlined),
        filled: true,
        focusColor: const Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        }
        if (!GetUtils.isEmail(value)) {
          return 'Enter a valid email';
        }
        return null;
      },
    );
  }
}
