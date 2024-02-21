import 'package:QuizyGo/core/constants/partner.dart';
import 'package:QuizyGo/core/widgets/quetion_view.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PartnerQuetionsView extends StatelessWidget {
  const PartnerQuetionsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isArabic = BlocProvider.of<QuizCubit>(context).isArabic;
    return BlocBuilder<AskCubit, AskState>(
      builder: (context, state) {
        return QuetionsView(
          quetionAndChoices: isArabic
              ? Partner.quetionAndAnswersAr
              : Partner.quetionAndAnswersEn,
          quetionImage: Partner.images,
        );
      },
    );
  }
}
