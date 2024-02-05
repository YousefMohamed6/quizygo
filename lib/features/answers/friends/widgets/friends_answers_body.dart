import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/answer_tips.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/friends/presentation/friends_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';

class FriendsAnswersBody extends StatelessWidget {
  const FriendsAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    String answerName = BlocProvider.of<AnswerCubit>(context).answerName;
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: "${S.of(context).FriendSubTitleAnswer} $answerName",
      tipsType: AnswerTips(answerName: answerName),
      onPressed: () {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          Navigator.pushNamed(context, FriendsAskView.id);
        }
      },
    );
  }
}
