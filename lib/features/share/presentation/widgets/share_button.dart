import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton(
      {super.key,
      required this.title,
      required this.buttonColor,
      required this.iconPath,
      required this.onPressed,
      this.textColor});
  final String title;
  final Color buttonColor;
  final Color? textColor;
  final String iconPath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(16),
      color: buttonColor,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}