import 'package:flutter/material.dart';
import 'package:quizygo/core/app_background.dart';
import 'package:quizygo/core/appbar_logo.dart';
import 'package:quizygo/core/widgets/menu_button.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_view_body.dart';
import 'package:quizygo/core/constants/colors.dart';

class PartnerView extends StatelessWidget {
  const PartnerView({super.key});
  static const String id = "PartnerView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 150,
          leading: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const Background(child: PartnerViewbody()),
    );
  }
}
