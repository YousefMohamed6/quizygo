import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.30,
      height: MediaQuery.sizeOf(context).height * 0.20,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            imagePath,
          ),
        ),
      ),
    );
  }
}
