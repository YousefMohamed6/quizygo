import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/logo.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/custom_text.dart';
import 'package:QuizyGo/features/show%20score/widgets/create_new_quiz.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowScoreBody extends StatelessWidget {
  const ShowScoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    int correctAnswer = BlocProvider.of<AnswerCubit>(context).correctAnswer;
    String level = BlocProvider.of<AnswerCubit>(context).checkLevel(
      correctAnswer: correctAnswer,
      context: context,
    );
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: ColorManager.borderSideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            CustomText(text: S.of(context).Congrats),
            const SizedBox(height: 8),
            CustomText(text: "${S.of(context).yourScore} $correctAnswer/15"),
            const SizedBox(height: 8),
            CustomText(text: "${S.of(context).yourLevel} $level"),
            const SizedBox(height: 16),
            const Logo(),
            const SizedBox(height: 16),
            CustomText(text: S.of(context).chellange),
            const SizedBox(height: 8),
            const CreateNewQuizButton(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
