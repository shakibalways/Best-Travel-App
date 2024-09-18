import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton({
    super.key,
    required this.buttonName,
    this.fWieght,
    this.fSize, this.margin, this.color, this.onTap,
  });

  final String buttonName;
  final FontWeight? fWieght;
  final double? fSize;
  final Color ? color;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        height: Get.height * 0.07,
        width: Get.width,
        margin:margin,
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
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
