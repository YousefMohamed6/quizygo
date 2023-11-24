import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assats/images/app_background.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
