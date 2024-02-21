import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_assets.dart';
import 'package:quizygo/core/uitls/url_launcher.dart';
import 'package:quizygo/features/share/presentation/widgets/share_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareToFaceBookButton extends StatelessWidget {
  const ShareToFaceBookButton({
    super.key,
    required this.quizLink,
    required this.isFriends,
  });
  final String quizLink;

  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ShareButton(
        title: S.of(context).shareOn,
        buttonColor: const Color.fromRGBO(21, 101, 192, 1),
        iconPath: PartnerAssets.imagesPartnerFacebook,
        onPressed: () async {
          await urlLauncher(
              url: "https://www.facebook.com/sharer/sharer.php?u=$quizLink");
        },
      ),
    );
  }
}
