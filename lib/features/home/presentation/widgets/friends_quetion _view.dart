import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:quizygo/features/intro/friends/presentation/friends_intro_view.dart';
import 'package:quizygo/generated/l10n.dart';

class FriendsQuetionView extends StatelessWidget {
  const FriendsQuetionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndSubTitle(
          title: S.of(context).testFriend,
          subtitle: S.of(context).testFriendSubTitle,
        ),
        CustomImage(
          path: "assats/images/friends.png",
          onPressed: () {
            BlocProvider.of<AnswerCubit>(context).addQuetionType(isFriends: true);
            Navigator.pushNamed(context, FriendsIntroView.id);
          },
        ),
      ],
    );
  }
}
