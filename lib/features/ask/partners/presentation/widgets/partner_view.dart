import 'package:flutter/material.dart';
import 'package:quizygo/core/appbar_logo.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/menu_button.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_view_body.dart';

class PartnerView extends StatelessWidget {
  const PartnerView({super.key});
  static const String id = "Partner";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 150,
          leading: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const PartnerViewbody(),
    );
  }
}
