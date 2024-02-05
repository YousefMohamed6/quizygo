import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/private_policy_body.dart';

class PrivatePolicy extends StatelessWidget {
  const PrivatePolicy({super.key});
  static const String id = "/PrivatePolicy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarLogo(),
        actions: const [MenuButton()],
        backgroundColor: ColorManager.primary,
      ),
      body: const PrivatePolicyBody(),
    );
  }
}
