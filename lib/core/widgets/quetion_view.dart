import 'package:QuizyGo/core/constants/friends.dart';
import 'package:QuizyGo/core/constants/partner.dart';
import 'package:QuizyGo/core/widgets/double_image.dart';
import 'package:QuizyGo/core/widgets/quetiontext.dart';
import 'package:QuizyGo/features/ask/managment/cubit/ask_cubit.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuetionsView extends StatelessWidget {
  const QuetionsView({
    super.key,
    required this.quetionAndChoices,
    required this.quetionImage,
  });
  final Map<String, List<String>> quetionAndChoices;
  final Map<String, List<String>> quetionImage;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        String numbuerOfQuetion =
            BlocProvider.of<AskCubit>(context).numberOfQuetion.toString();
        bool isArabic = BlocProvider.of<QuizCubit>(context).isArabic;
        bool isFriends = BlocProvider.of<QuizCubit>(context).isFriends;
        String quetionText = quetionAndChoices[numbuerOfQuetion]![0];
        if (state is Answer && !isArabic) {
          if (quetionText.contains("your")) {
            quetionText = quetionText.replaceAll("your", "${state.userName}'s");
          }
          if (quetionText.contains("you")) {
            quetionText = quetionText.replaceAll("you", state.userName);
          }
          if (quetionText.contains("are")) {
            quetionText = quetionText.replaceAll("are", "is");
          }
        } else if (state is Answer && isArabic && isFriends) {
          quetionText = Friends.quetionsAr[numbuerOfQuetion]![0];
          quetionText = quetionText.replaceAll("1", state.userName);
        } else if (state is Answer && isArabic && !isFriends) {
          quetionText = Partner.quetionsAr[numbuerOfQuetion]![0];
          quetionText = quetionText.replaceAll("1", state.userName);
        } else {
          quetionText = quetionAndChoices[numbuerOfQuetion]![0];
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            QuetionText(
              quetionText: quetionText,
            ),
            const SizedBox(height: 16),
            DoubleImage(
              fristImagePath: quetionImage[numbuerOfQuetion]![0],
              secondImagePath: quetionImage[numbuerOfQuetion]![1],
              fristAnswer: quetionAndChoices[numbuerOfQuetion]![1],
              secondAnswer: quetionAndChoices[numbuerOfQuetion]![2],
            ),
            const SizedBox(height: 8),
            DoubleImage(
              fristImagePath: quetionImage[numbuerOfQuetion]![2],
              secondImagePath: quetionImage[numbuerOfQuetion]![3],
              fristAnswer: quetionAndChoices[numbuerOfQuetion]![3],
              secondAnswer: quetionAndChoices[numbuerOfQuetion]![4],
            ),
          ],
        );
      },
    );
  }
}
