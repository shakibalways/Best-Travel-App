import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  const MyCustomText({
    super.key,
    required this.text,
    this.fSize,
    this.fWeight,
    this.tAlign,
    this.maxLines,
    this.oflow,
    this.color,
    this.onTap, this.lSpacing,
  });
  final String text;
  final double? fSize;
  final FontWeight? fWeight;
  final TextAlign? tAlign;
  final Color? color;
  final int? maxLines;
  final TextOverflow? oflow;
  final void Function()? onTap;
  final double? lSpacing;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        overflow: oflow,
        textAlign: tAlign ?? TextAlign.start,
        maxLines: maxLines ?? 1,
        text,
        style: TextStyle(
          fontSize: fSize ?? 15,
          fontWeight: fWeight ?? FontWeight.normal,
          color: color ?? Colors.black,
          letterSpacing: lSpacing,
        ),
      ),
    );
  }
}
