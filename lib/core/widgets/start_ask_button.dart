import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/generated/l10n.dart';

class StartAskButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StartAskButton({super.key, required this.onPressed});

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
        minWidth: MediaQuery.sizeOf(context).width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          S.of(context).start,
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
