import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/partner.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/numbers_of_quetion.dart';
import 'package:quizygo/features/ask/friends/presentation/widgets/quetion_view.dart';

class PartnerAskBody extends StatelessWidget {
  const PartnerAskBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        return Column(
          children: [
            const Expanded(child: SizedBox()),
            const NumbersOfQuetion(),
            const Expanded(child: SizedBox()),
            QuetionsView(
              quetionAndChoices: BlocProvider.of<AnswerCubit>(context).isArabic
                  ? Partner.quetionsAndAnswerAr
                  : Partner.quetionsAndAnswerEn,
              quetionImage: Partner.images,
            ),
            const Expanded(child: SizedBox())
          ],
        );
      },
    );
  }
}
