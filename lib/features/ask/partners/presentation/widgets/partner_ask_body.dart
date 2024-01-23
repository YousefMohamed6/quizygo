import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/partner.dart';
import 'package:quizygo/core/constants/quetions.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/quetion_view.dart';

class PartnerAskBody extends StatelessWidget {
  const PartnerAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SizedBox()),
        NumbersOfQuetion(),
        Expanded(child: SizedBox()),
        QuetionsView(
          quetionAndChoices: Quetions.partnerQuetion,
          quetionImage: PartnerAssets.partnerImage,
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
