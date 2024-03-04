import 'package:url_launcher/url_launcher.dart';

class Urls {
  Urls._();

  static const _termsOfService = 'https://google.com/';
  static const _privacyPolicy = 'https://google.com/';
  static const _buyPro = 'https://google.com/';

  static void showTermsOfService() => _show(_termsOfService);

  static void showPrivacyPolicy() => _show(_privacyPolicy);

  static void showBuyPro() => _show(_buyPro);

  static void _show(String url) {
    launchUrl(Uri.parse(url));
  }
}
