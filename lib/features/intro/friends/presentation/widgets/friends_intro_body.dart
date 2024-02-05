import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/friends/presentation/friends_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';

class FriendsIntroBody extends StatelessWidget {
  const FriendsIntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: S.of(context).testFriendSubTitleIntro,
      onPressed: () {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          BlocProvider.of<AnswerCubit>(context).addLanguageType();
          BlocProvider.of<AnswerCubit>(context).isFriends = true;
          Navigator.pushNamed(context, FriendsAskView.id);
        }
      },
    );
  }
}
