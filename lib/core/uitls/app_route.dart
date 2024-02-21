import 'package:go_router/go_router.dart';
import 'package:quizygo/features/ask/presentation/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/features/ask/presentation/partners/presentation/partner_ask_view.dart';
import 'package:quizygo/features/get%20Answers/get_answers.dart';
import 'package:quizygo/features/home/presentation/home_view.dart';
import 'package:quizygo/features/intro_answer/friends/friends_answer.dart';
import 'package:quizygo/features/intro_answer/partner/partner_answer.dart';
import 'package:quizygo/features/intro_ask/friends/presentation/friends_ask_view.dart';
import 'package:quizygo/features/intro_ask/partners/presentation/partner_view.dart';
import 'package:quizygo/features/menu/presentation/views/about_us.dart';
import 'package:quizygo/features/menu/presentation/views/contact.dart';
import 'package:quizygo/features/menu/presentation/views/private_policy.dart';
import 'package:quizygo/features/share/presentation/share_view.dart';
import 'package:quizygo/features/show%20score/show_score.dart';

abstract class RouterManager {
  static GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        name: HomeView.id,
        path: HomeView.id,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        name: FriendsIntroAsk.id,
        path: FriendsIntroAsk.id,
        builder: (context, state) => const FriendsIntroAsk(),
      ),
      GoRoute(
        name: PartnerIntroAsk.id,
        path: PartnerIntroAsk.id,
        builder: (context, state) => const PartnerIntroAsk(),
      ),
      GoRoute(
        name: AboutUs.id,
        path: AboutUs.id,
        builder: (context, state) => const AboutUs(),
      ),
      GoRoute(
        name: Contact.id,
        path: Contact.id,
        builder: (context, state) => const Contact(),
      ),
      GoRoute(
        name: PrivatePolicy.id,
        path: PrivatePolicy.id,
        builder: (context, state) => const PrivatePolicy(),
      ),
      GoRoute(
        name: FriendsAskView.id,
        path: FriendsAskView.id,
        builder: (context, state) => const FriendsAskView(),
      ),
      GoRoute(
        name: PartnerAskView.id,
        path: PartnerAskView.id,
        builder: (context, state) => const PartnerAskView(),
      ),
      GoRoute(
        name: ShareLinkView.id,
        path: ShareLinkView.id,
        builder: (context, state) => const ShareLinkView(),
      ),
      GoRoute(
        name: FriendsIntroAnswer.id,
        path: FriendsIntroAnswer.id,
        builder: (context, state) => const FriendsIntroAnswer(),
      ),
      GoRoute(
        name: PartnerIntroAnswer.id,
        path: PartnerIntroAnswer.id,
        builder: (context, state) => const PartnerIntroAnswer(),
      ),
      GoRoute(
        name: GetAnswers.id,
        path: GetAnswers.id,
        builder: (context, state) => const GetAnswers(),
      ),
      GoRoute(
        name: ShowScoreView.id,
        path: ShowScoreView.id,
        builder: (context, state) => const ShowScoreView(),
      ),
    ],
  );
}
