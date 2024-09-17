import 'package:best_travel_app/components/my_custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.buttonName,
    this.fWieght,
    this.fSize,
  });
  final String buttonName;
  final FontWeight? fWieght;
  final double? fSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: Get.height * 0.08,
        width: Get.width,
        decoration: BoxDecoration(
          color: const Color(0xff1BBA85),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
              fontSize: fSize,
              fontWeight: fWieght,
            ),
          ),
        ),
      ),
    );
  }
}
