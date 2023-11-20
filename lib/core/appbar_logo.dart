import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.smart_toy_outlined,
            size: 32,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "QuizyGo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}