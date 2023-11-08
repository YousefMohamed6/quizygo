import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          path,
          width: MediaQuery.sizeOf(context).width * 0.3,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: MaterialButton(
            onPressed: () {},
            color: Colors.red,
            height: 44,
            minWidth: MediaQuery.sizeOf(context).width * 0.305,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: const Text(
              'Start',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
