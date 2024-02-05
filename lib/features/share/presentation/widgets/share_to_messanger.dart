import 'package:flutter/material.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_button.dart';
import 'package:QuizyGo/generated/l10n.dart';

class ShareToMessangerButton extends StatelessWidget {
  const ShareToMessangerButton({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ShareButton(
        title: S.of(context).shareOn,
        buttonColor: Colors.purple,
        iconPath: "assats/images/messanger.jpeg",
        onPressed: () async {
          await urlLauncher(url: "fb-messenger://share/?link=$quizLink");
        },
      ),
    );
  }
}
