import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/features/home/presentation/widgets/custom_image.dart';
import 'package:quizygo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:quizygo/features/intro/partners/presentation/partner_view.dart';
import 'package:quizygo/generated/l10n.dart';

class PartnerQuetionView extends StatelessWidget {
  const PartnerQuetionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleAndSubTitle(
          title: S.of(context).testPartner,
          subtitle: S.of(context).subTitlePartener,
        ),
        CustomImage(
          path: "assats/images/partner.jpg",
          onPressed: () {
            BlocProvider.of<AnswerCubit>(context)
                .addQuetionType(isFriends: false);
            Navigator.pushNamed(context, PartnerIntroView.id);
          },
        ),
      ],
    );
  }
}
