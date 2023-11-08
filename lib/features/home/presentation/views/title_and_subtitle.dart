import 'package:flutter/material.dart';

class TitleAndSubTitle extends StatelessWidget {
  const TitleAndSubTitle(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).width * 0.02,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).width * 0.02,
            color: Colors.red,
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}