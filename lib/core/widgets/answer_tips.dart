import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/tips_text.dart';
import 'package:quizygo/generated/l10n.dart';

class AnswerTips extends StatelessWidget {
  const AnswerTips({super.key, required this.friendName});
  final String friendName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(),
        TipsText(text: S.of(context).tips),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).enterName),
        const SizedBox(height: 8),
        TipsText(text: "${S.of(context).answerFriend} $friendName"),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).check),
        const SizedBox(height: 8),
      ],
    );
  }
}
