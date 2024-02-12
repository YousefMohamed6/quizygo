import 'package:QuizyGo/core/constants/colors.dart';
import 'package:QuizyGo/core/constants/keys.dart';
import 'package:QuizyGo/features/get%20Answers/get_answers.dart';
import 'package:QuizyGo/features/share/presentation/widgets/share_contanier_view.dart';
import 'package:flutter/material.dart';

class ShareLinkViewBody extends StatelessWidget {
  const ShareLinkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String documentId = Uri.base.queryParameters[kDocumentId] ?? "";
    String userName = Uri.base.queryParameters[kUserName] ?? "";
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
          quizLink: "$kBaseUrl${GetAnswers.id}?id=$documentId",
          documentId: documentId,
        ),
      ),
    );
  }
}
