import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/generated/l10n.dart';

class CopyLinkButton extends StatelessWidget {
  const CopyLinkButton({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromRGBO(229, 57, 53, 1), ColorManager.primary],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        height: 56,
        minWidth: MediaQuery.sizeOf(context).width * 0.3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: () {
          Clipboard.setData(ClipboardData(text: quizLink));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(S.of(context).copyLinkMessage),
              showCloseIcon: true,
              duration: const Duration(seconds: 1),
            ),
          );
        },
        child: Text(
          S.of(context).copylink,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}