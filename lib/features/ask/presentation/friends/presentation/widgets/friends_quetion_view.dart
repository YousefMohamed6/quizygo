import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/app_data/friends_data.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/widgets/quetion_view.dart';
import 'package:quizygo/features/ask/managment/cubit/ask_cubit.dart';

class FriendsQuetionsView extends StatelessWidget {
  const FriendsQuetionsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isArabic = BlocProvider.of<QuizCubit>(context).isArabic;
    return BlocBuilder<AskCubit, AskState>(
      builder: (context, state) {
        return QuetionsView(
          quetionAndChoices: isArabic
              ? FriendsData.quetionsAndAnswersAr
              : FriendsData.quetionsAndAnswersEn,
          quetionImage: FriendsData.images,
        );
      },
    );
  }
}
