import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoubleContainer extends StatelessWidget {
  const DoubleContainer({
    super.key,
    required this.containerColor,
    required this.text,
    required this.tColor,
    this.onTap,
  });
  final Color containerColor;
  final String text;
  final Color tColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Get.height * 0.08,
        width:Get.width *0.44,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: MyCustomText(
            text: text,
            fSize: 17,
            fWeight: FontWeight.w500,
            color: tColor,
          ),
        ),
      ),
    );
  }
}
