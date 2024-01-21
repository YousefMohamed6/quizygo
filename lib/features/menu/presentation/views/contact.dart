import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/core/widgets/menu_button.dart';
import 'package:quizygo/features/menu/presentation/widgets/contact_body.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  static const String id = "Contact";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarLogo(),
          actions: const [MenuButton()],
          backgroundColor: ColorManager.primary),
      body: const ContactBody(),
    );
  }
}
