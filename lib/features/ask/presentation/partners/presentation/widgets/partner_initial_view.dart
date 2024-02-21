import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/presentation/partners/presentation/widgets/partner_quetion_view.dart';

class PartnerInitialBody extends StatelessWidget {
  const PartnerInitialBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        NumbersOfQuetion(),
        Spacer(),
        PartnerQuetionsView(),
        Spacer(),
      ],
    );
  }
}
