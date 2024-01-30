import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/widgets/intro_view.dart';
import 'package:quizygo/features/ask/partners/presentation/partner_ask_view.dart';
import 'package:quizygo/generated/l10n.dart';

class PartnerIntroBody extends StatelessWidget {
  const PartnerIntroBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntroView(
      formKey: BlocProvider.of<AnswerCubit>(context).formKey,
      title: S.of(context).testPartnerIntro,
      subTitle: S.of(context).subTitlePartenerIntro,
      onPressed: () {
        var formKey = BlocProvider.of<AnswerCubit>(context).formKey;
        if (formKey.currentState!.validate()) {
          BlocProvider.of<AnswerCubit>(context).addUserName();
          BlocProvider.of<AnswerCubit>(context).addLanguageType();
          BlocProvider.of<AnswerCubit>(context)
              .addQuetionType(isFriends: false);
          Navigator.pushNamed(context, PartnerAskView.id);
        }
      },
    );
  }
}
