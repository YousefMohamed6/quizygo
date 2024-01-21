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
        const SizedBox(height: 16),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.035,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.030,
            fontWeight: FontWeight.w500,
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
