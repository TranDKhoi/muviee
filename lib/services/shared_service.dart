import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static late SharedPreferences _pref;

  static init() async {
    _pref = await SharedPreferences.getInstance();
  }

  String? getCurrentLang() {
    return _pref.getString("language");
  }

  void setCurrentLang(String currentLang) {
    _pref.setString("language", currentLang);
  }

  bool? getCurrentTheme() {
    return _pref.getBool("theme");
  }

  void setCurrentTheme(bool isDark) {
    _pref.setBool("theme", isDark);
  }

  void setToken(String token) {
    _pref.setString("token", token);
  }

  void clearToken() {
    _pref.remove("token");
  }

  String? getToken() {
    return _pref.getString("token");
  }
}
