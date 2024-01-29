import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/tips_text.dart';
import 'package:quizygo/generated/l10n.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

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
        TipsText(text: S.of(context).answer),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).share),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).guess),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).check),
      ],
    );
  }
}
