import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/image_card.dart';

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
    String currentAnswer = BlocProvider.of<AnswerCubit>(context).currentAnswer;
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        if (state is CorrectAnswer) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageCard(
                  imagePath: fristImagePath,
                  answer: fristAnswer,
                  onPressedColor:
                      fristAnswer == currentAnswer ? state.answerColor : null),
              const SizedBox(width: 32),
              ImageCard(
                  imagePath: secondImagePath,
                  answer: secondAnswer,
                  onPressedColor:
                      secondAnswer == currentAnswer ? state.answerColor : null),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageCard(
                  imagePath: fristImagePath,
                  answer: fristAnswer,
                  onPressedColor: fristAnswer == currentAnswer
                      ? ColorManager.borderSideColor
                      : null),
              const SizedBox(width: 32),
              ImageCard(
                  imagePath: secondImagePath,
                  answer: secondAnswer,
                  onPressedColor: secondAnswer == currentAnswer
                      ? ColorManager.borderSideColor
                      : null),
            ],
          );
        }
      },
    );
  }
}
