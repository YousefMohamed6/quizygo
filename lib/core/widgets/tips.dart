import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/tips_text.dart';
import 'package:quizygo/generated/l10n.dart';

class Tips extends StatelessWidget {
  const Tips({super.key});

  @override
  Widget build(BuildContext context) {
    bool isFriends = BlocProvider.of<AnswerCubit>(context).isFriends;
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
        TipsText(
          text: isFriends
              ? S.of(context).shareFriend
              : S.of(context).sharePartner,
        ),
        const SizedBox(height: 8),
        TipsText(
          text: isFriends
              ? S.of(context).guessFriend
              : S.of(context).guessPartner,
        ),
        const SizedBox(height: 8),
        TipsText(
          text: isFriends
              ? S.of(context).checkFriend
              : S.of(context).checkPartner,
        ),
      ],
    );
  }
}
