import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';
import 'package:quizygo/features/menu/presentation/views/about_us.dart';
import 'package:quizygo/features/menu/presentation/views/contact.dart';
import 'package:quizygo/features/menu/presentation/views/private_policy.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.menu,
        color: Colors.red,
      ),
      onSelected: (value) {
        switch (value) {
          case "hello":
            Navigator.popAndPushNamed(context, HomeView.id);
            break;
          case "about":
            Navigator.pushNamed(context, AboutUs.id);
            break;
          case "contact":
            Navigator.pushNamed(context, Contact.id);
            break;
          case "Privacy":
            Navigator.pushNamed(context, PrivatePolicy.id);
            break;
        }
      },
      itemBuilder: (BuildContext menu) {
        return const [
          PopupMenuItem(
            value: 'hello',
            child: Text("Hello"),
          ),
          PopupMenuItem(
            value: 'about',
            child: Text("About"),
          ),
          PopupMenuItem(
            value: 'contact',
            child: Text("Contact"),
          ),
          PopupMenuItem(
            value: 'Privacy',
            child: Text("Privacy Policy"),
          ),
          PopupMenuItem(
            value: 'Terms',
            child: Text("Terms Of Use"),
          )
        ];
      },
    );
  }
}
