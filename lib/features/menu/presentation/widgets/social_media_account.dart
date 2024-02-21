import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/uitls/url_launcher.dart';
import 'package:quizygo/features/menu/presentation/widgets/account_item.dart';

class SocialMediaAccounts extends StatelessWidget {
  const SocialMediaAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Account(
          onPressed: () async {
            await urlLauncher(url: KeysManager.kFacebook);
          },
          icon: const Icon(
            FontAwesomeIcons.facebook,
            size: 36,
            color: Colors.blue,
          ),
        ),
        Account(
          onPressed: () async {
            await urlLauncher(url: KeysManager.kTiktok);
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
