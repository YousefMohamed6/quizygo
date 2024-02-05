import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/answer_view.dart';
import 'package:QuizyGo/core/widgets/image_view.dart';

class ImageAndAnswer extends StatelessWidget {
  const ImageAndAnswer(
      {super.key,
      this.onPressedColor,
      required this.imagePath,
      required this.answer});
  final String imagePath;
  final String answer;
  final Color? onPressedColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: onPressedColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: ColorManager.borderSideColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 8),
          ImageView(imagePath: imagePath),
          const SizedBox(height: 8),
          AnswerView(answer: answer)
        ],
      ),
    );
  }
}
