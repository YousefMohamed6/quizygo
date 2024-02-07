import 'package:QuizyGo/anwser_cubit/anwser_cubit.dart';
import 'package:QuizyGo/features/home/presentation/widgets/custom_image.dart';
import 'package:QuizyGo/features/home/presentation/widgets/title_and_subtitle.dart';
import 'package:QuizyGo/features/intro_ask/partners/presentation/partner_view.dart';
import 'package:QuizyGo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
          onPressed: () async {
            BlocProvider.of<AnswerCubit>(context).restView();
            BlocProvider.of<AnswerCubit>(context)
                .addQuetionType(isFriends: false);
            await context.pushNamed(PartnerIntroView.id);
          },
        ),
      ],
    );
  }
}
