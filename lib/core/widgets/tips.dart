import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/tips_text.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(),
        TipsText(text: "Tips !"),
        SizedBox(height: 16),
        TipsText(text: "✍️ Enter Your Name"),
        SizedBox(height: 16),
        TipsText(
          text: "❓ Answer any 15 questions about yourself.",
        ),
        SizedBox(height: 16),
        TipsText(
            text: "📢 Share your quiz-link with your Friends\n& Family."),
        SizedBox(height: 16),
        TipsText(text: "🤔 Your friends will try to guess the right answers."),
        SizedBox(height: 16),
        TipsText(text: "🥇 Check the score of your Friends at\n your quiz-link!"),
      ],
    );
  }
}
