import 'package:flutter/foundation.dart';
import 'package:flutter_task_storage/data/pref/shared_pref.dart';

class HomeProvider extends ChangeNotifier {
  SharedPref sharedPref;

  HomeProvider(this.sharedPref) {
    _getName();
    _getEmail();
    _getNoTlpn();
  }

  void clear() {
    sharedPref.clearAllData();
  }

  late String _name = '';

  String get name => _name;

  late String _email = '';

  String get email => _email;

  late String _noTlpn = '';

  String get noTlpn => _noTlpn;

  void _getEmail() async {
    _email = await sharedPref.email;
    notifyListeners();
  }

  void _getNoTlpn() async {
    _noTlpn = await sharedPref.noTlpn;
    notifyListeners();
  }

  void _getName() async {
    _name = await sharedPref.name;
    notifyListeners();
  }
}
