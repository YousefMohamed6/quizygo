import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:QuizyGo/features/intro_ask/friends/presentation/widgets/friends_intro_body.dart';

class FriendsIntroView extends StatelessWidget {
  const FriendsIntroView({super.key});
  static const String id = "/FriendsIntro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const FriendsIntroBody(),
    );
  }
}