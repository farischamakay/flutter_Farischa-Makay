import 'package:nanoid/nanoid.dart';

class Contact {
  late String id;
  String name;
  String number;
  Contact({required this.name, required this.number}) {
    id = nanoid(15);
  }
}
