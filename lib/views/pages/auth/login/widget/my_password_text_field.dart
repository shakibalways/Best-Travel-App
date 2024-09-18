import 'package:flutter/material.dart';

class MyPasswordTextField extends StatelessWidget {
  const MyPasswordTextField({
    super.key,
    required this.passwordController,
    this.suffixWidget, required this.obscureText,
  });
  final TextEditingController passwordController;
  final Widget? suffixWidget;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText:obscureText,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Password",
        prefixIcon: const Icon(Icons.key),
        filled: true,
        focusColor: const Color(0xffFFFFFF),
        suffixIcon: suffixWidget,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
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
