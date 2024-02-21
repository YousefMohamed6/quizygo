import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/uitls/url_launcher.dart';
import 'package:quizygo/generated/l10n.dart';

class CreateNewQuizButton extends StatelessWidget {
  const CreateNewQuizButton({super.key});

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
        minWidth: MediaQuery.sizeOf(context).width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: () async {
          await urlLauncher(url: KeysManager.kBaseUrl);
        },
        child: Text(
          S.of(context).createQuiz,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
