import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class FriendsIntroBody extends StatelessWidget {
  const FriendsIntroBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: S.of(context).testFriendSubTitleIntro,
      onPressed: () {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserNameToMyAnswers();
          Navigator.pushNamed(context, FriendsAskView.id);
        }
      },
    );
  }
}
