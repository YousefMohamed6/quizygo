import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/friends.dart';
import 'package:quizygo/core/constants/quetions.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/quetion_view.dart';

class FriendsAskBody extends StatelessWidget {
  const FriendsAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        const NumbersOfQuetion(),
        const Expanded(child: SizedBox()),
        QuetionsView(
            quetionAndChoices: Quetions.friendsQuetion,
            quetionImage: FriendsAssets.friendsImage),
        const Expanded(child: SizedBox())
      ],
    );
  }
}
