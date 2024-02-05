import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/ask/partners/presentation/widgets/partner_ask_body.dart';

class PartnerAskView extends StatelessWidget {
  const PartnerAskView({super.key});
  static const String id = "/PartnerAsk";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const PartnerAskBody(),
    );
  }
}
