import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/answer_view.dart';
import 'package:quizygo/core/widgets/image_view.dart';

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
        color: BlocProvider.of<AnwserCubit>(context).answer == answer
            ? ColorManager.borderSideColor
            : null,
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
