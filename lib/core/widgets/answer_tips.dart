import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/tips_text.dart';
import 'package:QuizyGo/generated/l10n.dart';

class AnswerTips extends StatelessWidget {
  const AnswerTips({super.key, required this.answerName});
  final String answerName;
  @override
  Widget build(BuildContext context) {
    bool isFriend = BlocProvider.of<AnswerCubit>(context).isFriends;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(),
        TipsText(text: S.of(context).tips),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).enterName),
        const SizedBox(height: 8),
        TipsText(
            text:
                "${isFriend ? S.of(context).answerFriend : S.of(context).answerPartner} $answerName"),
        const SizedBox(height: 8),
        TipsText(text: S.of(context).check),
        const SizedBox(height: 8),
      ],
    );
  }
}
