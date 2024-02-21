import 'package:QuizyGo/core/widgets/answer_tips.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/friends/presentation/friends_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FriendsAnswersBody extends StatelessWidget {
  const FriendsAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = BlocProvider.of<QuizCubit>(context).answerName;
    return IntroView(
      formKey: BlocProvider.of<QuizCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: "${S.of(context).FriendSubTitleAnswer} $userName",
      tipsType: AnswerTips(answerName: userName),
      onPressed: () async {
        var formKey = BlocProvider.of<QuizCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<QuizCubit>(context).addUserName();
          BlocProvider.of<QuizCubit>(context).answerQuiz(userName: userName);
          context.goNamed(FriendsAskView.id);
        }
      },
    );
  }
}
