import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/intro_ask/friends/presentation/widgets/friends_ask_body.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';

class FriendsIntroAsk extends StatelessWidget {
  const FriendsIntroAsk({super.key});
  static const String id = "/Friends/intro/ask";
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
      body: const FriendsIntroAskBody(),
    );
  }
}
