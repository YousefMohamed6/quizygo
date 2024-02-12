import 'package:QuizyGo/core/widgets/numbers_of_quetion.dart';
import 'package:QuizyGo/features/ask/presentation/friends/presentation/widgets/friends_quetion_view.dart';
import 'package:flutter/material.dart';

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
