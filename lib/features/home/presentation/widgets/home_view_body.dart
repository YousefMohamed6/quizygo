import 'package:flutter/material.dart';
import 'package:quizygo/features/ask/frinds/presentation/frinds_view.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TitleAndSubTitle(
          title: 'Real partner 🗝❤',
          subtitle: 'How well do you know your partner',
        ),
        CustomImage(
          path: "assats/images/partner.jpg",
          onPressed: () {
            Navigator.pushNamed(context, FriendsView.id);
          },
        ),
        const SizedBox(
          height: 16,
        ),
        const TitleAndSubTitle(
          title: 'Test your friends ✌🏻❤',
          subtitle: 'How well do your friends know you',
        ),
        CustomImage(
          path: "assats/images/friends.png",
          onPressed: () {},
        ),
      ],
    );
  }
}
