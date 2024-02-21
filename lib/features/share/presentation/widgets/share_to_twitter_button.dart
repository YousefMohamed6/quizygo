import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/uitls/url_launcher.dart';
import 'package:quizygo/features/share/presentation/widgets/share_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareToTwitterButton extends StatelessWidget {
  const ShareToTwitterButton({
    super.key,
    required this.quizLink,
    required this.isFriends,
  });
  final String quizLink;
  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return ShareButton(
      title: S.of(context).shareTwitter,
      buttonColor: Colors.black,
      textColor: Colors.white,
      iconPath: "assats/images/twitter.png",
      onPressed: () async {
        var userName = GoRouterState.of(context)
            .uri
            .queryParameters[KeysManager.kUserName]!;
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
        await urlLauncher(
            url:
                "https://twitter.com/intent/tweet?text=${isFriends ? S.of(context).ShareLinkfriend : S.of(context).ShareLinkfriend}\n&url=$quizLink");
      },
    );
  }
}
