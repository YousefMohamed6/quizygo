import 'package:QuizyGo/features/home/presentation/widgets/friends%20_view.dart';
import 'package:QuizyGo/features/home/presentation/widgets/partner_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        FriendsView(),
        SizedBox(height: 16),
        PartnerView(),
        SizedBox(height: 48),
      ],
    );
  }
}
