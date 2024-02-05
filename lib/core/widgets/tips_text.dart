import 'package:flutter/material.dart';

class TipsText extends StatelessWidget {
  const TipsText({super.key, required this.text, this.textAlign});
  final String text;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
