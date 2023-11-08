import 'package:flutter/material.dart';
import 'package:quizygo/features/home/presentation/views/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: const Leading(),
        actions: const [Action()],
        backgroundColor: const Color(0xffFFB97E),
      ),
      body: const HomeViewBody(),
    );
  }
}

class Leading extends StatelessWidget {
  const Leading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.smart_toy_outlined,
            size: 32,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "QuizyGo",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class Action extends StatelessWidget {
  const Action({super.key});

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
