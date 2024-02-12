import 'package:flutter/material.dart';

class QuetionNumberItem extends StatelessWidget {
  const QuetionNumberItem(
      {super.key, required this.quetionNumber, this.quetionNumberColor});
  final String quetionNumber;
  final Color? quetionNumberColor;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: quetionNumberColor,
      radius: MediaQuery.sizeOf(context).height * 0.027,
      child: Text(
        quetionNumber,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.030,
          color: Colors.red,
        ),
      ),
    );
  }
}
