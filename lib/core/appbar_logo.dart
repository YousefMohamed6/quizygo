import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "assats/images/appbar_logo.jpg",
        fit: BoxFit.fill,
      ),
    );
  }
}
