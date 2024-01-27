import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.red,
      height: 50,
      minWidth: MediaQuery.sizeOf(context).width * 0.456,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Text(
        'Start',
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.030,
        ),
      ),
    );
  }
}
