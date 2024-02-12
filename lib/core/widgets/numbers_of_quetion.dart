import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/features/ask/presentation/friends/presentation/widgets/quetion_number_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumbersOfQuetion extends StatelessWidget {
  const NumbersOfQuetion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AskCubit, AskState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuetionNumberItem(
                  quetionNumber: "1",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 1)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "2",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 2)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "3",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 3)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "4",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 4)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "5",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 5)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "6",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 6)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "7",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 7)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "8",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 8)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "9",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 9)
                      ? ColorManager.borderSideColor
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                QuetionNumberItem(
                  quetionNumber: "10",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 10)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "11",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 11)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "12",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 12)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "13",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 13)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "14",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 14)
                      ? ColorManager.borderSideColor
                      : null,
                ),
                QuetionNumberItem(
                  quetionNumber: "15",
                  quetionNumberColor: BlocProvider.of<AskCubit>(context)
                          .checkQuetionIsAwnser(numberOfQuetion: 15)
                      ? ColorManager.borderSideColor
                      : null,
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
