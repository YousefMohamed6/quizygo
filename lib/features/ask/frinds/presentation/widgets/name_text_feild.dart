import 'package:flutter/material.dart';

class NameTextFeild extends StatelessWidget {
  const NameTextFeild({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return null;
      },
      textAlign: TextAlign.center,
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        hintText: "Enter your Name",
        alignLabelWithHint: true,
      ),
    );
  }
}
