import 'package:flutter/widgets.dart';

class AnswerView extends StatelessWidget {
  const AnswerView({super.key, required this.answer});
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Text(
      answer,
      style: TextStyle(
        fontSize: MediaQuery.sizeOf(context).height * 0.025,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
