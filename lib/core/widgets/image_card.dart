import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:QuizyGo/anwser_cubit/anwser_cubit.dart";
import "package:QuizyGo/core/widgets/image_and_answer.dart";

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
    List<String> answers = BlocProvider.of<AnswerCubit>(context).theAnswers;
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        if (answers.isNotEmpty) {
          return GestureDetector(
            onTap: () async {
              BlocProvider.of<AnswerCubit>(context)
                  .checkCorrectAnswer(currentAnswer: answer);
            },
            child: ImageAndAnswer(
              answer: answer,
              imagePath: imagePath,
              onPressedColor: onPressedColor,
            ),
          );
        } else {
          return GestureDetector(
            onTap: () async {
              BlocProvider.of<AnswerCubit>(context)
                  .createAnswer(currentAnswer: answer);
            },
            child: ImageAndAnswer(
              answer: answer,
              imagePath: imagePath,
              onPressedColor: onPressedColor,
            ),
          );
        }
      },
    );
  }
}
