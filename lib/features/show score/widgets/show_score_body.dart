import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/features/get%20Answers/widgets/logo.dart';
import 'package:quizygo/features/menu/presentation/widgets/custom_text.dart';
import 'package:quizygo/features/show%20score/widgets/create_new_quiz.dart';
import 'package:quizygo/generated/l10n.dart';

class ShowScoreBody extends StatelessWidget {
  const ShowScoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    String correctAnswer = GoRouterState.of(context)
        .uri
        .queryParameters[KeysManager.kCorrectAnswers]!;
    String userName =
        GoRouterState.of(context).uri.queryParameters[KeysManager.kUserName]!;
    String level = BlocProvider.of<QuizCubit>(context).checkLevel(
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
            CustomText(
              text: "${S.of(context).Congrats} $userName",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: "${S.of(context).yourScore} $correctAnswer/15",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: "${S.of(context).yourLevel} $level",
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 16),
            const Logo(),
            const SizedBox(height: 16),
            CustomText(
              text: S.of(context).chellange,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            const CreateNewQuizButton(),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
