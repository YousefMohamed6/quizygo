import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/language_menu.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';
import 'package:quizygo/features/menu/presentation/views/about_us.dart';
import 'package:quizygo/features/menu/presentation/views/contact.dart';
import 'package:quizygo/features/menu/presentation/views/private_policy.dart';
import 'package:quizygo/generated/l10n.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.red,
      ),
      onSelected: (value) {
        switch (value) {
          case "home":
            Navigator.popAndPushNamed(context, HomeView.id);
            break;
          case "about":
            Navigator.popAndPushNamed(context, AboutUs.id);
            break;
          case "contact":
            Navigator.popAndPushNamed(context, Contact.id);
            break;
          case "Privacy":
            Navigator.popAndPushNamed(context, PrivatePolicy.id);
            break;
        }
      },
      itemBuilder: (BuildContext menu) {
        return [
          PopupMenuItem(
            value: 'home',
            child: Text(S.of(context).home),
          ),
          PopupMenuItem(
            value: 'Privacy',
            child: Text(S.of(context).privacy),
          ),
          PopupMenuItem(
            value: 'Terms',
            child: Text(S.of(context).terms),
          ),
          PopupMenuItem(
            value: 'contact',
            child: Text(S.of(context).contact),
          ),
          PopupMenuItem(
            value: 'about',
            child: Text(S.of(context).about),
          ),
          const PopupMenuItem(
            value: 'language',
            padding: EdgeInsets.zero,
            child: LanguageMenu(),
          ),
        ];
      },
    );
  }
}
