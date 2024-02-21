import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/home/presentation/widgets/home_view_body.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String id = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarLogo(),
        actions: const [
          MenuButton(),
        ],
        backgroundColor: ColorManager.primary,
      ),
      body: const HomeViewBody(),
    );
  }
}
