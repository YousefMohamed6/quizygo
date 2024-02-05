import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/about_us_body.dart';

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
