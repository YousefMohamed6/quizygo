import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_assets.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:quizygo/features/intro_ask/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitleAndSubTitle(
          title: S.of(context).testFriend,
          subtitle: S.of(context).testFriendSubTitle,
        ),
        CustomImage(
          path: AssetsManager.friendsLogo,
          onPressed: () async {
            BlocProvider.of<QuizCubit>(context).restView();
            BlocProvider.of<QuizCubit>(context).addQuetionType(isFriends: true);
            context.goNamed(FriendsIntroAsk.id);
          },
        ),
      ],
    );
  }
}
