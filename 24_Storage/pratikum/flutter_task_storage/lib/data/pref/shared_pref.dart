import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  final Future<SharedPreferences> sharedpref;

  SharedPref({required this.sharedpref});

  final nameKey = 'nameKey';
  final emailKey = 'emailKey';
  final noTlpnKey = 'noTlpnKey';
  final passwordKey = 'passwordKey';
  final isLoginKey = 'isLoginKey';

  Future<String> get name async {
    final pref = await sharedpref;
    return pref.getString(nameKey) ?? '';
  }

  void setName(String value) async {
    final pref = await sharedpref;
    pref.setString(nameKey, value);
  }

  Future<bool> get isLogin async {
    final pref = await sharedpref;
    return pref.getBool(isLoginKey) ?? false;
  }

  void setIsLogin(bool value) async {
    final pref = await sharedpref;
    pref.setBool(isLoginKey, value);
  }

  Future<String> get email async {
    final pref = await sharedpref;
    return pref.getString(emailKey) ?? '';
  }

  void setEmail(String value) async {
    final pref = await sharedpref;
    pref.setString(emailKey, value);
  }

  Future<String> get noTlpn async {
    final pref = await sharedpref;
    return pref.getString(noTlpnKey) ?? '';
  }

  void setNoTlpn(String value) async {
    final pref = await sharedpref;
    pref.setString(noTlpnKey, value);
  }

  Future<String> get password async {
    final pref = await sharedpref;
    return pref.getString(passwordKey) ?? '';
  }

  void setPassword(String value) async {
    final pref = await sharedpref;
    pref.setString(passwordKey, value);
  }

  void clearAllData() async {
    final pref = await sharedpref;
    pref.clear();
  }
}
