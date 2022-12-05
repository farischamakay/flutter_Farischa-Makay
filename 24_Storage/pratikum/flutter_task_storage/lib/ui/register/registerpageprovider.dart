import 'package:flutter/material.dart';
import 'package:flutter_task_storage/data/pref/shared_pref.dart';

class RegisterProvider extends ChangeNotifier {
  final SharedPref sharedPref;

  RegisterProvider(this.sharedPref);

  Future<bool> getIsLogin() async {
    var data = await sharedPref.isLogin;
    return data;
  }

  late TextFieldState name = TextFieldState();
  late TextFieldState email = TextFieldState();
  late TextFieldState noTelpn = TextFieldState();
  late TextFieldState password = TextFieldState();

  void setName(String value) {
    if (value.isNotEmpty) {
      name = TextFieldState(error: false, msg: '', value: value);
    } else {
      name = TextFieldState(
          error: true, msg: 'gak boleh kosong bro', value: value);
    }
    notifyListeners();
  }

  void setEmail(String value) {
    if (value.isNotEmpty) {
      email = TextFieldState(error: false, msg: '', value: value);
    } else {
      email = TextFieldState(
          error: true, msg: 'gak boleh kosong bro', value: value);
    }
    notifyListeners();
  }

  void setNoTelpn(String value) {
    if (value.isNotEmpty) {
      noTelpn = TextFieldState(error: false, msg: '', value: value);
    } else {
      noTelpn = TextFieldState(
          error: true, msg: 'gak boleh kosong bro', value: value);
    }
    notifyListeners();
  }

  void setPassword(String value) {
    if (value.isNotEmpty) {
      password = TextFieldState(error: false, msg: '', value: value);
    } else {
      password = TextFieldState(
          error: true, msg: 'gak boleh kosong bro', value: value);
    }
    notifyListeners();
  }

  void submit(Function sukses, Function gagal) {
    if (name.value.ndakKosong() &&
        email.value.ndakKosong() &&
        noTelpn.value.ndakKosong() &&
        password.value.ndakKosong()) {
      sharedPref.setName(name.value);
      sharedPref.setEmail(email.value);
      sharedPref.setNoTlpn(noTelpn.value);
      sharedPref.setPassword(password.value);
      sharedPref.setIsLogin(true);
      sukses();
    } else {
      gagal();
    }
  }
}

extension NgecekStringAja on String {
  bool ndakKosong() => this != '';
}

class TextFieldState {
  bool error;
  String msg;
  String value;

  TextFieldState({this.error = false, this.msg = '', this.value = ''});
}
