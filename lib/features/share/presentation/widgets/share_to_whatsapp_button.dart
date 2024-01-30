import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/keys.dart';
import 'package:quizygo/core/url_launcher.dart';
import 'package:quizygo/features/share/presentation/widgets/share_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareToWhatsAppButton extends StatelessWidget {
  const ShareToWhatsAppButton({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return ShareButton(
      title: S.of(context).shareWhats,
      buttonColor: Colors.green,
      iconPath: "assats/images/whatsapp.png",
      onPressed: () async {
        await urlLauncher(url: "https://wa.me/?text=$kShareMessage\n$quizLink");
      },
    );
  }
}