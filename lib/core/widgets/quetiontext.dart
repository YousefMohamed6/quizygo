import 'package:flutter/material.dart';

class QuetionText extends StatelessWidget {
  const QuetionText({super.key, required this.quetionText});
  final String quetionText;
  @override
  Widget build(BuildContext context) {
    return Text(
      quetionText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height * 0.030,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
