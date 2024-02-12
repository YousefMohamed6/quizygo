import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/features/home/presentation/widgets/custom_image.dart';
import 'package:QuizyGo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:QuizyGo/features/intro_ask/friends/presentation/friends_intro_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

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
          onPressed: () async {
            BlocProvider.of<AnswerCubit>(context).restView();
            BlocProvider.of<AnswerCubit>(context)
                .addQuetionType(isFriends: true);
            await context.pushNamed(FriendsIntroView.id);
          },
        ),
      ],
    );
  }
}
