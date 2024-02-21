import 'package:QuizyGo/core/constants/friends.dart';
import 'package:QuizyGo/core/widgets/quetion_view.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FriendsQuetionsView extends StatelessWidget {
  const FriendsQuetionsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isArabic = BlocProvider.of<QuizCubit>(context).isArabic;
    return BlocBuilder<AskCubit, AskState>(
      builder: (context, state) {
        return QuetionsView(
          quetionAndChoices: isArabic
              ? Friends.quetionAndAnswersAr
              : Friends.quetionAndAnswersEn,
          quetionImage: Friends.images,
        );
      },
    );
  }
}
