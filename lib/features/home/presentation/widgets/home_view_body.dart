import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/widgets/friends_quetion%20_view.dart';
import 'package:quizygo/features/home/presentation/widgets/partner_quetion_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FriendsQuetionView(),
        SizedBox(height: 16),
        PartnerQuetionView(),
        SizedBox(height: 48),
      ],
    );
  }
}
