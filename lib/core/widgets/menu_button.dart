import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.menu),
      onSelected: (value) {},
      itemBuilder: (BuildContext menu) {
        return const [
          PopupMenuItem(
            value: '/hello',
            child: Text("Hello"),
          ),
          PopupMenuItem(
            value: '/about',
            child: Text("About"),
          ),
          PopupMenuItem(
            value: '/contact',
            child: Text("Contact"),
          ),
          PopupMenuItem(
            value: '/Privacy',
            child: Text("Privacy Policy"),
          ),
          PopupMenuItem(
            value: '/Terms',
            child: Text("Terms Of Use"),
          )
        ];
      },
    );
  }
}