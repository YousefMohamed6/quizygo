import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/presentation/friends/presentation/widgets/friends_quetion_view.dart';

class FriendsInitialBody extends StatelessWidget {
  const FriendsInitialBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        NumbersOfQuetion(),
        Spacer(),
        FriendsQuetionsView(),
        Spacer(),
      ],
    );
  }
}
