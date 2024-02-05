import 'package:flutter/material.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/constants/partner.dart';
import 'package:QuizyGo/core/url_launcher.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_button.dart';
import 'package:QuizyGo/generated/l10n.dart';

class ShareToFaceBookButton extends StatelessWidget {
  const ShareToFaceBookButton(
      {super.key,
      required this.quizLink,
      required this.isFriends,
      required this.documentId});
  final String quizLink;
  final String documentId;

  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ShareButton(
        title: S.of(context).shareOn,
        buttonColor: const Color.fromRGBO(21, 101, 192, 1),
        iconPath: Partner.imagesPartnerFacebook,
        onPressed: () async {
          await urlLauncher(
              url:
                  "https://www.facebook.com/sharer/sharer.php?u=${isFriends ? kFriendMessage : kPartnerMessage}$documentId$quizLink");
        },
      ),
    );
  }
}
