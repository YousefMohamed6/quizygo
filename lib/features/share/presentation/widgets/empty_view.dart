import 'package:QuizyGo/features/get%20Answers/widgets/logo.dart';
import 'package:QuizyGo/features/show%20score/widgets/create_new_quiz.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          S.of(context).welcome,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.030,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 64),
        const Logo(),
        const SizedBox(height: 16),
        Text(
          S.of(context).noShareLink,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        const CreateNewQuizButton(),
      ],
    );
  }
}
