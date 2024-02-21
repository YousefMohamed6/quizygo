import 'package:QuizyGo/core/widgets/language_menu.dart';
import 'package:QuizyGo/features/home/presentation/home_view.dart';
import 'package:QuizyGo/features/menu/presentation/views/about_us.dart';
import 'package:QuizyGo/features/menu/presentation/views/contact.dart';
import 'package:QuizyGo/features/menu/presentation/views/private_policy.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Image.asset(
        "assats/images/menu.png",
        height: MediaQuery.sizeOf(context).height * 0.032,
      ),
      onSelected: (value) async {
        switch (value) {
          case "home":
             context.goNamed(HomeView.id);
            break;
          case "about":
             context.goNamed(AboutUs.id);
            break;
          case "contact":
             context.goNamed(Contact.id);
            break;
          case "Privacy":
             context.goNamed(PrivatePolicy.id);
            break;
        }
      },
      itemBuilder: (BuildContext menu) {
        return [
          PopupMenuItem(
            value: 'home',
            padding: const EdgeInsets.only(left: 24, right: 2),
            child: Text(S.of(context).home),
          ),
          PopupMenuItem(
            value: 'Privacy',
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(S.of(context).privacy),
          ),
          PopupMenuItem(
            value: 'Terms',
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(S.of(context).terms),
          ),
          PopupMenuItem(
            value: 'contact',
            padding: const EdgeInsets.only(
              left: 24,
            ),
            child: Text(S.of(context).contact),
          ),
          PopupMenuItem(
            value: 'about',
            padding: const EdgeInsets.only(
              left: 24,
            ),
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
