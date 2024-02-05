import 'package:flutter/material.dart';

class TableItem extends StatelessWidget {
  const TableItem({super.key, required this.text, this.color, this.padding});
  final String text;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.sizeOf(context).height * 0.024,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}