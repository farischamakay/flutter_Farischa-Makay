import 'package:flutter/foundation.dart';
import 'package:flutter_assignment_21/models/contact.dart';

class ContactProvider with ChangeNotifier {
  final List<Contact> _contact = [];

  List<Contact> get contact => [..._contact];

  void addNewContact(Contact newContact) {
    _contact.add(newContact);
    notifyListeners();
  }

  void deleteContact(String id) {
    final targetIndex = _contact.indexWhere((contact) => contact.id == id);
    if (targetIndex != -1) {
      _contact.removeAt(targetIndex);
      notifyListeners();
    }
  }
}
