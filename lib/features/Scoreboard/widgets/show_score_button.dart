import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_keys.dart';
import 'package:quizygo/features/share/managment/share_cubit/share_cubit.dart';
import 'package:quizygo/generated/l10n.dart';

class ShowScoreBoardButton extends StatelessWidget {
  const ShowScoreBoardButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromRGBO(229, 57, 53, 1), ColorManager.primary],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        height: 56,
        minWidth: MediaQuery.sizeOf(context).width * 0.3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: () {
          String documentId =
              Uri.base.queryParameters[KeysManager.kDocumentId]!;
          BlocProvider.of<ShareCubit>(context)
              .getScores(documentId: documentId);
        },
        child: Text(
          S.of(context).showScoreboard,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
