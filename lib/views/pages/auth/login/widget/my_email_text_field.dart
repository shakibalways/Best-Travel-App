import 'package:flutter/material.dart';

class MyEmailTextField extends StatelessWidget {
  const MyEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
    );
  }
}