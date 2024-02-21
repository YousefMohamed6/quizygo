import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/tips_text.dart';
import 'package:quizygo/generated/l10n.dart';

class GetAnswerTips extends StatelessWidget {
  const GetAnswerTips({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(),
        TipsText(text: S.of(context).tips),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).answerid),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).check),
        const SizedBox(height: 8),
      ],
    );
  }
}
