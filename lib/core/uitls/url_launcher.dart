import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncher({required String url}) async {
  final Uri urls = Uri.parse(url);
  if (await canLaunchUrl(urls)) {
    launchUrl(urls, mode: LaunchMode.externalApplication);
  }
}
