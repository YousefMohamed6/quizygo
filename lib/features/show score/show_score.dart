import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/show%20score/widgets/show_score_body.dart';
import 'package:flutter/material.dart';

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
