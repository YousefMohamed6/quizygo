import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_button.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        var userName =
            GoRouterState.of(context).uri.queryParameters[kUserName]!;
        var message = isFriends
            ? S.of(context).ShareLinkfriend
            : S.of(context).ShareLinkPartner;
        if (message.contains("your partner")) {
          message = message.replaceAll("your partner", userName);
        }
        if (message.contains("your friend")) {
          message = message.replaceAll("your friend", userName);
        }
        if (message.contains("صديقك")) {
          message = message.replaceAll("صديقك", userName);
        }
        if (message.contains("شريكك")) {
          message = message.replaceAll("شريكك", userName);
        }
        if (message.contains("1")) {
          message = message.replaceAll("1", userName);
        }
        await urlLauncher(url: "https://wa.me/?text=$message\n$quizLink");
      },
    );
  }
}
