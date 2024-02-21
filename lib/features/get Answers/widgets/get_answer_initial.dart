import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/get_answers_tips.dart';
import 'package:quizygo/features/get%20Answers/widgets/get_answer_button.dart';
import 'package:quizygo/features/get%20Answers/widgets/logo.dart';

class GetAnswerInitial extends StatelessWidget {
  const GetAnswerInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: ColorManager.borderSideColor,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Logo(),
            SizedBox(height: 32),
            GetAnswerButton(),
            SizedBox(height: 16),
            GetAnswerTips(),
          ],
        ),
      ),
    );
  }
}
