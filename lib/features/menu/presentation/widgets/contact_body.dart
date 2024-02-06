import 'package:QuizyGo/features/menu/presentation/widgets/about_us_information.dart';
import 'package:QuizyGo/features/menu/presentation/widgets/email.dart';
import 'package:flutter/material.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "Contact",
            style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Text(
                "Send any questions, ideas or suggestions You can send an email at ",
                style: TextStyle(
                  fontSize: MediaQuery.sizeOf(context).height * 0.024,
                ),
              ),
              const EMail(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          const AboutUsInformation(),
        ],
      ),
    );
  }
}
