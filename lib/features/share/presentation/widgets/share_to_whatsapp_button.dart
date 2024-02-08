import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_button.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';

class ShareToWhatsAppButton extends StatelessWidget {
  const ShareToWhatsAppButton({
    super.key,
    required this.quizLink,
    required this.isFriends,
  });
  final String quizLink;

  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return ShareButton(
      title: S.of(context).shareWhats,
      buttonColor: Colors.green,
      iconPath: "assats/images/whatsapp.png",
      onPressed: () async {
        await urlLauncher(
            url:
                "https://wa.me/?text=${isFriends ? S.of(context).ShareMessagefriend : S.of(context).ShareMessagefriend}\n$quizLink");
      },
    );
  }
}
