import 'package:flutter/material.dart';

class StartFriendsButton extends StatelessWidget {
  const StartFriendsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.red,
      height: 56,
      minWidth: MediaQuery.sizeOf(context).width,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: const Text(
        'Start',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
