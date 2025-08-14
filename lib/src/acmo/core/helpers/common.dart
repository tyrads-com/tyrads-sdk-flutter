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

Future<bool> acmoLaunchURLForce(url,
    {LaunchMode mode = LaunchMode.externalApplication}) async {
  try {
   return await launchUrl(Uri.parse(url), mode: mode);
  } catch(e) {
    return false;
  }
}

void acmoLaunchURL(url) async {
  try {
    var uri = Uri.parse(url);
    await canLaunchUrl(uri)
        ? await launchUrl(uri)
        : throw 'Could not launch $url';
  } finally {}
}

String acmoGetWhatsappURL(String number) {
  return "https://wa.me/$number";
}

String acmoGetPhoneURL(String number) {
  return Uri.encodeFull("tel:$number");
}

String acmoGetEmailURL(String email) {
  return "mailto:$email";
}
Duration acmoParseDuration(int value, String unit) {
  switch (unit.toLowerCase()) {
    case "day":
    case "days":
      return Duration(days: value);
    case "week":
    case "weeks":
      return Duration(days: value * 7);
    case "month":
    case "months":
      return Duration(days: value * 30);
    case "year":
    case "years":
      return Duration(days: value * 365);
    case "hour":
    case "hours":
      return Duration(hours: value);
    case "minute":
    case "minutes":
      return Duration(minutes: value);
    case "second":
    case "seconds":
      return Duration(seconds: value);
    case "millisecond":
    case "milliseconds":
      return Duration(milliseconds: value);
    case "microsecond":
    case "microseconds":
      return Duration(microseconds: value);
    default:
      throw Exception("Invalid duration unit");
  }
}
