import 'package:flutter/material.dart';
import 'package:quizygo/core/constants/colors.dart';

class LinkTextFiled extends StatelessWidget {
  const LinkTextFiled({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      style: TextStyle(
        color: Colors.red,
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        fontWeight: FontWeight.w500,
      ),
      controller: TextEditingController(text: quizLink),
      enabled: false,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
      ),
    );
  }
}
