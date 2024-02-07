import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:flutter/material.dart';

class EMail extends StatelessWidget {
  const EMail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        kEmail,
        style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.016),
      ),
      onPressed: () async {
        await urlLauncher(url: "mailto:$kEmail?Subject=QuizyGo Problem");
      },
    );
  }
}
