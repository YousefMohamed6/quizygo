import 'package:flutter/material.dart';

class StartAskButton extends StatelessWidget {
  final VoidCallback onPressed;

  const StartAskButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.blue, Color.fromRGBO(144, 202, 249, 1)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        height: 56,
        minWidth: MediaQuery.sizeOf(context).width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'START',
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.030,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
