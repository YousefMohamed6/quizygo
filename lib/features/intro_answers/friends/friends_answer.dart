import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/intro_answers/friends/widgets/friends_answers_body.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:flutter/material.dart';

class FriendsIntroAnswer extends StatelessWidget {
  const FriendsIntroAnswer({super.key});
  static const String id = "/Friends";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const FriendsAnswersBody(),
    );
  }
}
