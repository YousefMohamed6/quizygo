import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';
import 'package:quizygo/features/menu/presentation/widgets/about_us_body.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  static const String id = "/AboutUs";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarLogo(),
        actions: const [MenuButton()],
        backgroundColor: ColorManager.primary,
      ),
      body: const AboutUsBody(),
    );
  }
}
