import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/widgets/appbar_logo.dart';
import 'package:QuizyGo/features/get%20Answers/mangement/cubit/get_answers_cubit.dart';
import 'package:QuizyGo/features/get%20Answers/widgets/get_answers_body.dart';
import 'package:QuizyGo/features/menu/presentation/menu_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetAnswers extends StatelessWidget {
  const GetAnswers({super.key});
  static const String id = "/AnswerQuiz";
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
