import 'package:flutter/material.dart';
import 'package:quizygo/core/app_background.dart';
import 'package:quizygo/core/appbar_logo.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/menu_button.dart';
import 'package:quizygo/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 150,
          leading: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const Background(child: HomeViewBody()),
    );
  }
}
