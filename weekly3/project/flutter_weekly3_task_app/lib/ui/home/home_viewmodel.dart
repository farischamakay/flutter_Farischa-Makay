import 'package:flutter/cupertino.dart';

class HomeViewModel with ChangeNotifier {
  late String firstName = '';
  late String lastName = '';
  late String email = '';
  late String content = '';

  String showData() => "$firstName, $lastName, $email, $content";
}
