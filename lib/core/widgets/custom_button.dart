import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/core/uitls/app_values.dart';
import 'package:quizygo/generated/l10n.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            ColorManager.red,
            ColorManager.primary,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(ValueManager.v8),
      ),
      child: MaterialButton(
        height: 56,
        minWidth: MediaQuery.sizeOf(context).width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(ValueManager.v8),
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
