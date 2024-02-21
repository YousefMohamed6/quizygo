import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/friends/presentation/friends_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FriendsIntroBody extends StatelessWidget {
  const FriendsIntroBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<QuizCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: S.of(context).testFriendSubTitleIntro,
      onPressed: () async {
        var formKey = BlocProvider.of<QuizCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<QuizCubit>(context).addUserName();
          BlocProvider.of<QuizCubit>(context).addLanguageType();
          BlocProvider.of<QuizCubit>(context).isFriends = true;
          context.goNamed(FriendsAskView.id);
        }
      },
    );
  }
}
