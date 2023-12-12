import 'package:flutter/material.dart';
import 'package:quizygo/core/appbar_logo.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/menu_button.dart';
import 'package:quizygo/features/ask/frinds/presentation/widgets/friends_intro_body.dart';

class FriendsIntroView extends StatelessWidget {
  const FriendsIntroView({super.key});
  static const String id = "Friends";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 150,
          leading: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: FriendsIntroBody(formKey: GlobalKey<FormState>()),
    );
  }
}
