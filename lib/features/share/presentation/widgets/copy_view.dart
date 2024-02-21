import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:quizygo/features/share/presentation/widgets/custom_text_filed.dart';

class CopyView extends StatelessWidget {
  const CopyView(
      {super.key, required this.textController, required this.onPressed});
  final String textController;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFiled(textController: textController),
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: onPressed,
          icon: const Icon(FontAwesomeIcons.copy),
          iconSize: 24,
          enableFeedback: true,
        ),
      ],
    );
  }
}
