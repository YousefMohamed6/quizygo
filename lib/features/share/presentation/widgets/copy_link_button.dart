// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:quizygo/anwser_cubit/anwser_cubit.dart';
// import 'package:quizygo/core/uitls/app_colors.dart';// import 'package:quizygo/core/constants/keys.dart';
// import 'package:quizygo/generated/l10n.dart';

// class CopyLinkButton extends StatelessWidget {
//   const CopyLinkButton(
//       {super.key,
//       required this.quizLink,
//       required this.isFriends,
//       required this.documentId});
//   final String quizLink;
//   final String documentId;

//   final bool isFriends;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color.fromRGBO(229, 57, 53, 1), ColorManager.primary],
//           begin: Alignment.topRight,
//           end: Alignment.bottomLeft,
//         ),
//         borderRadius: BorderRadius.circular(8.0),
//       ),
//       child: MaterialButton(
//         height: 56,
//         minWidth: MediaQuery.sizeOf(context).width * 0.3,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(8),
//           ),
//         ),
//         onPressed: () async {
//           var prefs = await BlocProvider.of<AnswerCubit>(context).getPrefs();
//           String documentId = prefs.getString(kDocumentId)!;
//           Clipboard.setData(ClipboardData(text: documentId));
//           // ignore: use_build_context_synchronously
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               // ignore: use_build_context_synchronously
//               content: Text(S.of(context).copyLink),
//               showCloseIcon: true,
//               duration: const Duration(seconds: 1),
//             ),
//           );
//         },
//         child: Text(
//           S.of(context).copylink,
//           style: TextStyle(
//             fontSize: MediaQuery.sizeOf(context).height * 0.024,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
