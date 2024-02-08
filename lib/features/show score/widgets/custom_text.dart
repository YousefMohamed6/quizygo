import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height * 0.030,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
