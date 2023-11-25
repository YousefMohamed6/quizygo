import 'package:flutter/material.dart';

class EMail extends StatelessWidget {
  const EMail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        "QuizyGo@gmail.com",
        style: TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.016),
      ),
      onPressed: () {},
    );
  }
}
