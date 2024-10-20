import 'package:shared_preferences/shared_preferences.dart';

class Shared {
  static Future<bool> setSeenIntro(bool seenIntro) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool('seenIntro', seenIntro);
  }

  static Future<bool> setFullName(String fullName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString('fullName', fullName);
  }

  static getFullName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('fullName');
  }

  static getSeenIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('seenIntro');
  }
}
