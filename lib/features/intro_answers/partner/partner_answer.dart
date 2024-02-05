import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/intro_answers/partner/widgets/partner_answers_body.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:flutter/material.dart';

class PartnerIntroAnswer extends StatelessWidget {
  const PartnerIntroAnswer({super.key});
  static const String id = "/PartnerAnswer";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const PartnerAnswerBody(),
    );
  }
}
