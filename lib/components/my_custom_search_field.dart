import 'package:flutter/material.dart';

class MyCustomSearchField extends StatelessWidget {
  const MyCustomSearchField({
    super.key,
    required this.controller,
    this.hText,
    this.icon,
    this.prefixIcon,
    this.onTap,
    this.width,
    this.margin,
    this.height,
  });

  final TextEditingController controller;
  final String? hText;
  final Widget? prefixIcon;
  final IconData? icon;
  final void Function()? onTap;
  final double? height;

  final double? width;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * 0.08,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hText,
                prefixIcon: prefixIcon,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: height * 0.07,
              width: width * 0.15,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                  color: const Color(0xff1BBA85), shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
