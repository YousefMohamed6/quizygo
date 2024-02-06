import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key, required this.onPressed, required this.icon});
  final VoidCallback onPressed;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}