import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/widgets/appbar_logo.dart';
import 'package:quizygo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:quizygo/features/get%20Answers/widgets/get_answers_body.dart';
import 'package:quizygo/features/menu/presentation/menu_button.dart';

class GetAnswers extends StatelessWidget {
  const GetAnswers({super.key});
  static const String id = "/Answer/Quiz";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetAnswersCubit(),
      child: Scaffold(
        appBar: AppBar(
            title: const AppBarLogo(),
            actions: const [MenuButton()],
            backgroundColor: ColorManager.primary),
        body: const GetAnswersBody(),
      ),
    );
  }
}
