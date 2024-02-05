import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/core/widgets/answer_tips.dart';
import 'package:QuizyGo/core/widgets/intro_view.dart';
import 'package:QuizyGo/features/ask/partners/presentation/partner_ask_view.dart';
import 'package:QuizyGo/generated/l10n.dart';

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
      onPressed: () {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          Navigator.pushNamed(context, PartnerAskView.id);
        }
      },
    );
  }
}