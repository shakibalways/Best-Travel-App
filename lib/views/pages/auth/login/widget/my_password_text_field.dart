import 'package:flutter/material.dart';

class MyPasswordTextField extends StatelessWidget {
  const MyPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        prefixIcon: const Icon(Icons.key),
        filled: true,
        focusColor: const Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}