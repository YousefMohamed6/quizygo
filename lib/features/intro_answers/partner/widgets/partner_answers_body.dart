import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/widgets/answer_tips.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:QuizyGo/quiz_cubit/quiz_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartnerAnswerBody extends StatelessWidget {
  const PartnerAnswerBody({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = BlocProvider.of<QuizCubit>(context).answerName;
    return IntroView(
      formKey: BlocProvider.of<QuizCubit>(context).formKey,
      title: S.of(context).testPartnerIntro,
      subTitle: "${S.of(context).FriendSubTitleAnswer} $userName",
      tipsType: AnswerTips(answerName: userName),
      onPressed: () async {
        var formKey = BlocProvider.of<QuizCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<QuizCubit>(context).addUserName();
          BlocProvider.of<QuizCubit>(context).answerQuiz(userName: userName);
          context.goNamed(PartnerAskView.id,
              queryParameters: {kUserName: userName});
        }
      },
    );
  }
}
