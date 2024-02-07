import 'package:QuizyGo/features/share/presentation/widgets/share_to_facebook.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_to_messanger.dart';
import 'package:flutter/material.dart';

class ShareFaceAndMassenger extends StatelessWidget {
  const ShareFaceAndMassenger({
    super.key,
    required this.quizLink,
    required this.isFriends,
  });
  final String quizLink;

  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShareToFaceBookButton(
          quizLink: quizLink,
          isFriends: isFriends,
        ),
        const SizedBox(width: 8),
        ShareToMessangerButton(quizLink: quizLink)
      ],
    );
  }
}
