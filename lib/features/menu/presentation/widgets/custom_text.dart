import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key, required this.text, this.fontSize, this.fontWeight});
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? MediaQuery.sizeOf(context).height * 0.030,
        fontWeight: fontWeight,
      ),
    );
  }
}
