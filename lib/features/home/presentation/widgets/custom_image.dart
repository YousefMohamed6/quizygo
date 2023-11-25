import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/widgets/start_button.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.path, required this.onPressed});
  final String path;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          path,
          width: MediaQuery.sizeOf(context).width * 0.4,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: StartButton(onPressed: onPressed),
        ),
      ],
    );
  }
}
