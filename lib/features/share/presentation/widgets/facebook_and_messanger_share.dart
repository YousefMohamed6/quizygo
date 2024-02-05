import 'package:flutter/material.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_to_facebook.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_to_messanger.dart';

class ShareFaceAndMassenger extends StatelessWidget {
  const ShareFaceAndMassenger(
      {super.key,
      required this.quizLink,
      required this.isFriends,
      required this.documentId});
  final String quizLink;
  final String documentId;

  final bool isFriends;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ShareToFaceBookButton(
          quizLink: quizLink,
          isFriends: isFriends,
          documentId: documentId,
        ),
        const SizedBox(width: 8),
        ShareToMessangerButton(quizLink: quizLink)
      ],
    );
  }
}
