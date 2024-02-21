import 'package:flutter/material.dart';
import 'package:quizygo/core/uitls/app_colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.textController});
  final String textController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      style: TextStyle(
        color: Colors.red,
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        fontWeight: FontWeight.w500,
      ),
      enableInteractiveSelection: true,
      controller: TextEditingController(text: textController),
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
