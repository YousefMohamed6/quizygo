import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/intro_ask/partners/presentation/widgets/partner_view_body.dart';

class PartnerIntroView extends StatelessWidget {
  const PartnerIntroView({super.key});
  static const String id = "/PartnerIntro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: MediaQuery.sizeOf(context).height * 0.1,
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const PartnerIntroBody(),
    );
  }
}
