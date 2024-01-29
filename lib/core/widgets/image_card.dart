import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:quizygo/anwser_cubit/anwser_cubit.dart";
import "package:quizygo/core/widgets/image_and_answer.dart";

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imagePath,
    required this.answer,
    this.onPressedColor,
  });
  final String imagePath;
  final String answer;
  final Color? onPressedColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        BlocProvider.of<AnswerCubit>(context).answer = answer;
        BlocProvider.of<AnswerCubit>(context).changeColorOfTheChoise();
        BlocProvider.of<AnswerCubit>(context).checkAnswerState(context);
      },
      child: ImageAndAnswer(
        answer: answer,
        imagePath: imagePath,
        onPressedColor: onPressedColor,
      ),
    );
  }
}
