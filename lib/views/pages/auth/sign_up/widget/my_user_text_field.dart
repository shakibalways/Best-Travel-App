import 'package:flutter/material.dart';

class MyUserTextField extends StatelessWidget {
  const MyUserTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "UserName",
        prefixIcon: const Icon(Icons.person),
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