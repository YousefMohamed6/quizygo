import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/image_card.dart';

class DoubleImage extends StatelessWidget {
  const DoubleImage({
    super.key,
    required this.fristImagePath,
    required this.secondImagePath,
    required this.fristAnswer,
    required this.secondAnswer,
    this.fristImageColor,
    this.secondImageColor,
  });
  final String fristImagePath;
  final String secondImagePath;
  final String fristAnswer;
  final String secondAnswer;
  final Color? fristImageColor;
  final Color? secondImageColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageCard(
            imagePath: fristImagePath,
            answer: fristAnswer,
            onPressedColor: fristImageColor),
        const SizedBox(width: 32),
        ImageCard(
            imagePath: secondImagePath,
            answer: secondAnswer,
            onPressedColor: secondImageColor),
      ],
    );
  }
}
