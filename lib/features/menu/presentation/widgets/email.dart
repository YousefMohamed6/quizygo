import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/uitls/url_launcher.dart';

class EMail extends StatelessWidget {
  const EMail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        KeysManager.kEmail,
        style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.016),
      ),
      onPressed: () async {
        await urlLauncher(
            url: "mailto:${KeysManager.kEmail}?Subject=quizygo Problem");
      },
    );
  }
}
