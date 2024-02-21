import 'package:QuizyGo/core/uitls/app_assets.dart';
import 'package:QuizyGo/features/home/presentation/widgets/custom_image.dart';
import 'package:QuizyGo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:QuizyGo/features/intro_ask/friends/presentation/friends_intro_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
            context.goNamed(FriendsIntroView.id);
          },
        ),
      ],
    );
  }
}
