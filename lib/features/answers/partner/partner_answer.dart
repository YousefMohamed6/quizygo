import 'package:flutter/material.dart';
import 'package:QuizyGo/features/answers/partner/widgets/partner_answers_body.dart';

class PartnerAnswer extends StatelessWidget {
  const PartnerAnswer({super.key});
  static const String id = "/PartnerAnswer";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PartnerAnswerBody(),
    );
  }
}
