import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assats/images/appbar_logo.jpg",
      height: MediaQuery.sizeOf(context).height * 0.30,
      width: MediaQuery.sizeOf(context).width * 0.30,
    );
  }
}
