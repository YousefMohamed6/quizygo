import 'package:flutter/material.dart';
import 'package:quizygo/core/widgets/name_text_feild.dart';
import 'package:quizygo/core/widgets/start_ask_button.dart';
import 'package:quizygo/core/widgets/tips.dart';

class IntroAskView extends StatelessWidget {
  const IntroAskView(
      {super.key,
      required this.formKey,
      required this.title,
      required this.subTitle,
      required this.onPressed});
  final GlobalKey<FormState> formKey;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
          vertical: MediaQuery.sizeOf(context).height * 0.05,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.030,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.035,
                  color: Colors.blue[400],
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 32),
              NameTextFeild(controller: TextEditingController()),
              const SizedBox(height: 16),
              StartAskButton(
                onPressed: onPressed,
              ),
              const SizedBox(height: 16),
              const Tips(),
            ],
          ),
        ),
      ),
    );
  }
}
