import 'package:flutter/material.dart';

class TipsText extends StatelessWidget {
  const TipsText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height * 0.025,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
