import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/friends/presentation/friends_ask_view.dart';

class FriendsIntroBody extends StatelessWidget {
  const FriendsIntroBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnwserCubit>(context).formKey,
      title: "😍 Test Your Friendship 😉",
      subTitle: "Do your friends actually know you?",
      onPressed: () {
        var formKey = BlocProvider.of<AnwserCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnwserCubit>(context).addUserNameToMyAnswers();
          Navigator.pushNamed(context, FriendsAskView.id);
        }
      },
    );
  }
}
