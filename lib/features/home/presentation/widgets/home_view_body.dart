import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:quizygo/features/intro/friends/presentation/friends_intro_view.dart';
import 'package:quizygo/features/intro/partners/presentation/partner_view.dart';
import 'package:quizygo/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TitleAndSubTitle(
          title: S.of(context).testPartner,
          subtitle: S.of(context).subTitlePartener,
        ),
        CustomImage(
          path: "assats/images/partner.jpg",
          onPressed: () {
            Navigator.pushNamed(context, PartnerIntroView.id);
          },
        ),
        const SizedBox(height: 16),
        TitleAndSubTitle(
          title: S.of(context).testFriend,
          subtitle: S.of(context).testFriendSubTitle,
        ),
        CustomImage(
          path: "assats/images/friends.png",
          onPressed: () {
            Navigator.pushNamed(context, FriendsIntroView.id);
          },
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
