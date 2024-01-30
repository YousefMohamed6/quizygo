import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/features/share/presentation/widgets/copy_link_button.dart';
import 'package:quizygo/features/share/presentation/widgets/facebook_and_messanger_share.dart';
import 'package:quizygo/features/share/presentation/widgets/link_text_filed.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_twitter_button.dart';
import 'package:quizygo/features/share/presentation/widgets/share_to_whatsapp_button.dart';
import 'package:quizygo/generated/l10n.dart';

class ShareContainerView extends StatelessWidget {
  const ShareContainerView(
      {super.key, required this.userName, required this.quizLink});
  final String userName;
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    bool isFriends = BlocProvider.of<AnswerCubit>(context).isFriends;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${S.of(context).Congrats} $userName! ${S.of(context).quizReady}",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          isFriends
              ? S.of(context).ShareMessagefriend
              : S.of(context).ShareMessagePartner,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        LinkTextFiled(
          quizLink: quizLink,
        ),
        const SizedBox(height: 8),
        CopyLinkButton(quizLink: quizLink),
        const SizedBox(height: 8),
        ShareToWhatsAppButton(quizLink: quizLink),
        const SizedBox(height: 8),
        ShareFaceAndMassenger(quizLink: quizLink),
        const SizedBox(height: 8),
        ShareToTwitterButton(quizLink: quizLink),
        const SizedBox(height: 8),
      ],
    );
  }
}
