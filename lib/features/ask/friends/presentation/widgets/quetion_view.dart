import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/double_image.dart';
import 'package:QuizyGo/core/widgets/quetiontext.dart';

class QuetionsView extends StatelessWidget {
  const QuetionsView(
      {super.key, required this.quetionAndChoices, required this.quetionImage});
  final Map<String, List<String>> quetionAndChoices;
  final Map<String, List<String>> quetionImage;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnswerCubit, AnswerState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuetionText(
              quetionText: quetionAndChoices[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![0],
            ),
            const SizedBox(height: 16),
            DoubleImage(
              fristImagePath: quetionImage[BlocProvider.of<AnswerCubit>(context)
                  .numberOfQuetion
                  .toString()]![0],
              fristAnswer: quetionAndChoices[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![1],
              secondImagePath: quetionImage[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![1],
              secondAnswer: quetionAndChoices[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![2],
            ),
            const SizedBox(height: 8),
            DoubleImage(
              fristImagePath: quetionImage[BlocProvider.of<AnswerCubit>(context)
                  .numberOfQuetion
                  .toString()]![2],
              fristAnswer: quetionAndChoices[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![3],
              secondImagePath: quetionImage[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![3],
              secondAnswer: quetionAndChoices[
                  BlocProvider.of<AnswerCubit>(context)
                      .numberOfQuetion
                      .toString()]![4],
            ),
          ],
        );
      },
    );
  }
}
