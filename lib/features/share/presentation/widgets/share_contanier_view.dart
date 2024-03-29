import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizygo/features/Scoreboard/scoreboard_view.dart';
import 'package:quizygo/features/share/presentation/widgets/copy_view.dart';
import 'package:quizygo/features/share/presentation/widgets/facebook_and_messanger_share.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_twitter_button.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_whatsapp_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareContainerView extends StatelessWidget {
  const ShareContainerView({
    super.key,
    required this.userName,
    required this.quizLink,
    required this.documentId,
    required this.isFriends,
  });
  final String userName;
  final String quizLink;
  final String documentId;
  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${S.of(context).Congrats} $userName! ${S.of(context).quizReady}",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          isFriends
              ? S.of(context).ShareMessagefriend
              : S.of(context).ShareMessagePartner,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        CopyView(
          textController: quizLink,
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: quizLink));
            // ignore: use_build_context_synchronously
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                // ignore: use_build_context_synchronously
                content: Text(S.of(context).copyLink),
                showCloseIcon: true,
                duration: const Duration(seconds: 1),
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        ShareToWhatsAppButton(
          quizLink: quizLink,
          isFriends: isFriends,
        ),
        const SizedBox(height: 8),
        ShareFaceAndMassenger(
          quizLink: quizLink,
          isFriends: isFriends,
        ),
        const SizedBox(height: 8),
        ShareToTwitterButton(
          quizLink: quizLink,
          isFriends: isFriends,
        ),
        const SizedBox(height: 8),
        ScoreBoardView(userName: userName),
      ],
    );
  }
}
