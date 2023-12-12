import 'package:flutter/material.dart';

class StartAskButton extends StatelessWidget {
  const StartAskButton(
      {super.key, required this.formKey, required this.onPressed});
  final GlobalKey<FormState> formKey;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.red,
      height: 56,
      minWidth: MediaQuery.sizeOf(context).width,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
