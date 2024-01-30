import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/keys.dart';
import 'package:quizygo/core/url_launcher.dart';
import 'package:quizygo/features/share/presentation/widgets/share_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareToTwitterButton extends StatelessWidget {
  const ShareToTwitterButton({super.key, required this.quizLink});
 final String quizLink;
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
                    "https://twitter.com/intent/tweet?text=$kShareMessage\n&url=$quizLink");
          },
        );
  }
}