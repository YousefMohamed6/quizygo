import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/uitls/url_launcher.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/account_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class SocialMediaAccounts extends StatelessWidget {
  const SocialMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Account(
          onPressed: () async {
            await urlLauncher(url: kFacebook);
          },
          icon: const Icon(
            FontAwesomeIcons.facebook,
            size: 36,
            color: Colors.blue,
          ),
        ),
        Account(
          onPressed: () async {
            await urlLauncher(url: kTiktok);
          },
          icon: const Icon(
            FontAwesomeIcons.tiktok,
            size: 36,
          ),
        )
      ],
    );
  }
}