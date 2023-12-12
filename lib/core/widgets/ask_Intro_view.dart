import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/name_text_feild.dart';
import 'package:quizygo/core/widgets/start_ask_button.dart';
import 'package:quizygo/core/widgets/tips.dart';

class IntroAskView extends StatelessWidget {
  const IntroAskView(
      {super.key,
      required this.formKey,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final GlobalKey<FormState> formKey;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.sizeOf(context).width * 0.25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 32),
            NameTextFeild(controller: TextEditingController()),
            const SizedBox(height: 16),
            StartAskButton(
              formKey: formKey,
              onPressed: onPressed,
            ),
            const SizedBox(height: 16),
            const Tips(),
          ],
        ),
      ),
    );
  }
}
