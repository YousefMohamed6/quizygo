import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/ask_intro_view.dart';
import 'package:quizygo/features/ask/frinds/presentation/ask_view.dart';

class FriendsIntroBody extends StatelessWidget {
  const FriendsIntroBody({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return IntroAskView(
      formKey: formKey,
      title: "😍 Test Your Friendship 😉",
      subTitle: "Do your friends actually know you?",
      onPressed: () {
        if (formKey.currentState!.validate()) {
          Navigator.pushNamed(context, FriendsAskView.id);
        }
      },
    );
  }
}
