import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/core/widgets/answer_tips.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PartnerAnswerBody extends StatelessWidget {
  const PartnerAnswerBody({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = BlocProvider.of<AnswerCubit>(context).answerName;
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testPartnerIntro,
      subTitle: "${S.of(context).FriendSubTitleAnswer} $userName",
      tipsType: AnswerTips(answerName: userName),
      onPressed: () async {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          BlocProvider.of<AnswerCubit>(context).answerQuiz(userName: userName);
          await context.pushNamed(PartnerAskView.id,
              queryParameters: {kUserName: userName});
        }
      },
    );
  }
}
