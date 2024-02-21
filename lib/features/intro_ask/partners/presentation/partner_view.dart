import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/intro_ask/partners/presentation/widgets/partner_view_body.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';

class PartnerIntroAsk extends StatelessWidget {
  const PartnerIntroAsk({super.key});
  static const String id = "/Partner/intro/ask";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.sizeOf(context).height * 0.1,
        title: const AppBarLogo(),
        actions: const [
          MenuButton(),
        ],
        backgroundColor: ColorManager.primary,
      ),
      body: const PartnerIntroBody(),
    );
  }
}
