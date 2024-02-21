import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';
import 'package:quizygo/features/show%20score/widgets/show_score_body.dart';

class ShowScoreView extends StatelessWidget {
  const ShowScoreView({super.key});
  static const String id = "/Score";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const ShowScoreBody(),
    );
  }
}
