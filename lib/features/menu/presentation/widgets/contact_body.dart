import 'package:flutter/material.dart';
import 'package:quizygo/features/menu/presentation/widgets/about_us_body.dart';
import 'package:quizygo/features/menu/presentation/widgets/email.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "Contact",
            style:
                TextStyle(fontSize: MediaQuery.sizeOf(context).width * 0.020),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Text(
                "Send any questions, ideas or suggestions You can send an email at ",
                style: TextStyle(
                    fontSize: MediaQuery.sizeOf(context).width * 0.016),
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
