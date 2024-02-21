import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';
import 'package:quizygo/generated/l10n.dart';

class NameTextFeild extends StatelessWidget {
  const NameTextFeild(
      {super.key,
      required this.controller,
      this.hintText,
      this.valdiationText});
  final TextEditingController controller;
  final String? hintText;
  final String? valdiationText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return valdiationText ?? S.of(context).validation;
        } else {
          return null;
        }
      },
      textAlign: TextAlign.center,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
        hintText: hintText ?? S.of(context).enterName,
        hintStyle: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.024,
          fontWeight: FontWeight.w500,
        ),
        alignLabelWithHint: true,
      ),
    );
  }
}
