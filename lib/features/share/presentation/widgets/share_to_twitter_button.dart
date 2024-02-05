import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_button.dart';
import 'package:QuizyGo/generated/l10n.dart';

class ShareToTwitterButton extends StatelessWidget {
  const ShareToTwitterButton(
      {super.key,
      required this.quizLink,
      required this.isFriends,
      required this.documentId});
  final String quizLink;
  final String documentId;
  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return ShareButton(
      title: S.of(context).shareTwitter,
      buttonColor: Colors.black,
      textColor: Colors.white,
      iconPath: "assats/images/twitter.png",
      onPressed: () async {
        await urlLauncher(
            url:
                "https://twitter.com/intent/tweet?text=${isFriends ? kFriendMessage : kPartnerMessage}$documentId\n&url=$quizLink");
      },
    );
  }
}
