import 'package:flutter/material.dart';

class MyConfirmPassTextField extends StatelessWidget {
  const MyConfirmPassTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Confirm Password",
        prefixIcon: const Icon(Icons.key),
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