import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/ask_intro_view.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_ask_view.dart';

class PartnerIntroBody extends StatelessWidget {
  const PartnerIntroBody({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return IntroAskView(
      formKey: formKey,
      title: "😍 Test Your Partnership 😉",
      subTitle: "Do your Partner actually know you?",
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Navigator.pushNamed(context, PartnerAskView.id);
        }
      },
    );
  }
}
