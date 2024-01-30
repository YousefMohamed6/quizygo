import 'package:flutter/material.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_facebook.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_messanger.dart';

class ShareFaceAndMassenger extends StatelessWidget {
  const ShareFaceAndMassenger({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShareToFaceBookButton(quizLink: quizLink),
        const SizedBox(width: 8),
        ShareToMessangerButton(quizLink: quizLink)
      ],
    );
  }
}