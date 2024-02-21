import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_values.dart';
import 'package:quizygo/features/home/presentation/widgets/friends_view.dart';
import 'package:quizygo/features/home/presentation/widgets/partner_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FriendsView(),
        SizedBox(height: ValueManager.v16),
        PartnerView(),
        SizedBox(height: ValueManager.v48),
      ],
    );
  }
}
