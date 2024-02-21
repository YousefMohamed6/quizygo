import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/app_managment/quiz_cubit.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/core/widgets/answer_tips.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class PartnerAnswerBody extends StatelessWidget {
  const PartnerAnswerBody({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = BlocProvider.of<QuizCubit>(context).answerName;
    return CustomIntroView(
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
              queryParameters: {KeysManager.kUserName: userName});
        }
      },
    );
  }
}
