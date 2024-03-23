
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

SharedPreferences getSharedPreferences() {
  Future<SharedPreferences> pref0 = SharedPreferences.getInstance();
  SharedPreferences? pref;
  pref0.then((value) {
    pref = value;
  });
  for (;;) {
    if (pref != null) return pref!;
  }
}

Future<void> acmoLaunchURLForce(url) async {
  try {
    await launch(url);
  } finally {}
}

void acmoLaunchURL(url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

String acmoGetWhatsappURL(String number) {
  return "https://wa.me/$number";
}

String acmoGetPhoneURL(String number) {
  return Uri.encodeFull("tel:$number");
}

String acmoGetEmailURL(String email) {
  return "mailto:$email";
}

