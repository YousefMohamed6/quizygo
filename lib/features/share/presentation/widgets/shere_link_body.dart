import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/features/get%20Answers/get_answers.dart';
import 'package:quizygo/features/share/presentation/widgets/share_contanier_view.dart';

class ShareLinkViewBody extends StatelessWidget {
  const ShareLinkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String documentId =
        GoRouterState.of(context).uri.queryParameters[KeysManager.kDocumentId]!;
    String userName =
        GoRouterState.of(context).uri.queryParameters[KeysManager.kUserName]!;
    String isFriends = GoRouterState.of(context)
        .uri
        .queryParameters[KeysManager.kQuetionType]!;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorManager.borderSideColor,
          ),
        ),
        alignment: Alignment.center,
        child: ShareContainerView(
          userName: userName,
          quizLink: "${KeysManager.kBaseUrl}${GetAnswers.id}?id=$documentId",
          documentId: documentId,
          isFriends: isFriends == "true" ? true : false,
        ),
      ),
    );
  }
}
