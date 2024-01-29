import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
import 'package:quizygo/core/constants/colors.dart';
import 'package:quizygo/core/constants/keys.dart';
import 'package:quizygo/core/constants/partner.dart';
import 'package:quizygo/core/url_launcher.dart';

class ShareLinkViewBody extends StatelessWidget {
  const ShareLinkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String documentId = BlocProvider.of<AnswerCubit>(context).documentId;
    String userName = BlocProvider.of<AnswerCubit>(context).myAnswers["Name"]!;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: ColorManager.borderSideColor,
          ),
        ),
        child: ShareView(
          userName: userName,
          quizLink: "https://www.QuizyGo.com/$documentId",
        ),
      ),
    );
  }
}

class ShareView extends StatelessWidget {
  const ShareView({super.key, required this.userName, required this.quizLink});
  final String userName;
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Congrats $userName! Your Quiz link is ready!",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          "Share this quiz with your friends and family to see who gets maximum score",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: MediaQuery.sizeOf(context).height * 0.024,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        CustomTextFiled(
          quizLink: quizLink,
        ),
        const SizedBox(height: 8),
        CopyLinkButton(quizLink: quizLink),
        const SizedBox(height: 8),
        ShareButton(
          title: "Share On WhatsApp",
          buttonColor: Colors.green,
          iconPath: "assats/images/whatsapp.png",
          onPressed: () async {
            await urlLauncher(
                url: "https://wa.me/?text=$kShareMessage\n$quizLink");
          },
        ),
        const SizedBox(height: 8),
        ShareFaceAndMassenger(quizLink: quizLink),
        const SizedBox(height: 8),
        ShareButton(
          title: "Share On Twitter",
          buttonColor: Colors.black,
          textColor: Colors.white,
          iconPath: "assats/images/twitter.png",
          onPressed: () async {
            await urlLauncher(
                url:
                    "https://twitter.com/intent/tweet?text=$kShareMessage\n&url=$quizLink");
          },
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      style: TextStyle(
        color: Colors.red,
        fontSize: MediaQuery.sizeOf(context).height * 0.024,
        fontWeight: FontWeight.w500,
      ),
      controller: TextEditingController(text: quizLink),
      enabled: false,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(
            color: ColorManager.borderSideColor,
          ),
        ),
      ),
    );
  }
}

class CopyLinkButton extends StatelessWidget {
  const CopyLinkButton({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color.fromRGBO(229, 57, 53, 1), ColorManager.primary],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: MaterialButton(
        height: 56,
        minWidth: MediaQuery.sizeOf(context).width * 0.3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        onPressed: () {
          Clipboard.setData(ClipboardData(text: quizLink));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Link Copied"),
              showCloseIcon: true,
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: Text(
          "Copy Link",
          style: TextStyle(
            fontSize: MediaQuery.sizeOf(context).height * 0.024,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton(
      {super.key,
      required this.title,
      required this.buttonColor,
      required this.iconPath,
      required this.onPressed,
      this.textColor});
  final String title;
  final Color buttonColor;
  final Color? textColor;
  final String iconPath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.all(16),
      color: buttonColor,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

class ShareFaceAndMassenger extends StatelessWidget {
  const ShareFaceAndMassenger({super.key, required this.quizLink});
  final String quizLink;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ShareButton(
            title: "Share",
            buttonColor: const Color.fromRGBO(21, 101, 192, 1),
            iconPath: Partner.imagesPartnerFacebook,
            onPressed: () async {
              await urlLauncher(
                  url:
                      "https://www.facebook.com/sharer/sharer.php?u=$quizLink");
            },
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ShareButton(
            title: "Share",
            buttonColor: Colors.purple,
            iconPath: "assats/images/messanger.jpeg",
            onPressed: () async {
              await urlLauncher(url: "fb-messenger://share/?link=$quizLink");
            },
          ),
        ),
      ],
    );
  }
}
