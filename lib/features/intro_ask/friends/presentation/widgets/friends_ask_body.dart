import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/presentation/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class FriendsIntroAskBody extends StatelessWidget {
  const FriendsIntroAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomIntroView(
      formKey: BlocProvider.of<QuizCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: S.of(context).testFriendSubTitleIntro,
      onPressed: () async {
        var formKey = BlocProvider.of<QuizCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<QuizCubit>(context).addUserName();
          context.goNamed(FriendsAskView.id);
        }
      },
    );
  }
}
