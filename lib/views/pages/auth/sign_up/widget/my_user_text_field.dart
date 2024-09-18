import 'package:flutter/material.dart';

class MyUserTextField extends StatelessWidget {
  const MyUserTextField({
    super.key,
    required this.userNameController,
  });
  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: userNameController,
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
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Name is required';
        }
        return null;
      },
    );
  }
}
