import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:quizygo/features/intro_answer/friends/widgets/friends_answers_body.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';

class FriendsIntroAnswer extends StatelessWidget {
  const FriendsIntroAnswer({super.key});
  static const String id = "/Friends/intro/Answer";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AskCubit(),
      child: Scaffold(
        appBar: AppBar(
            title: const AppBarLogo(),
            actions: const [MenuButton()],
            backgroundColor: ColorManager.primary),
        body: const FriendsAnswersBody(),
      ),
    );
  }
}
