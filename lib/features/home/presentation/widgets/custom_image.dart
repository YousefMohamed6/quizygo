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
        Container(
          width: MediaQuery.sizeOf(context).width * 0.45,
          height: MediaQuery.sizeOf(context).height * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: StartButton(onPressed: onPressed),
        ),
      ],
    );
  }
}
