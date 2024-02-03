import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/answer_tips.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class FriendsAnswersBody extends StatelessWidget {
  const FriendsAnswersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testFriendIntro,
      subTitle: "${S.of(context).FriendSubTitleAnswer} Yousef",
      tipsType: const AnswerTips(friendName: "Yousef"),
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
