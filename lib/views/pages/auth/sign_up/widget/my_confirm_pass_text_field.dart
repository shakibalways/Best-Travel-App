import 'package:flutter/material.dart';

class MyConfirmPassTextField extends StatelessWidget {
  const MyConfirmPassTextField({
    super.key,
    required this.confirmPasswordController,
    required this.obscureText,
    this.suffixIcon,
  });
  final TextEditingController confirmPasswordController;
  final bool obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmPasswordController,
      obscureText: obscureText,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Confirm Password",
        prefixIcon: const Icon(Icons.key),
        filled: true,
        suffixIcon: suffixIcon,
        focusColor: const Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
