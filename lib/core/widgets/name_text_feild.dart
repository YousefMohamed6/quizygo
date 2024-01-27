import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/colors.dart';

class NameTextFeild extends StatelessWidget {
  const NameTextFeild({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter Your Name";
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
        hintText: "Enter your Name",
        hintStyle: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.024,
          fontWeight: FontWeight.w500,
        ),
        alignLabelWithHint: true,
      ),
    );
  }
}
