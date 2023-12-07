import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/ask_Intro_view.dart';

class PartnerViewbody extends StatelessWidget {
  const PartnerViewbody({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return IntroAskView(formKey: formKey);
  }
}
