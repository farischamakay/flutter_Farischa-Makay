import 'package:flutter/material.dart';
import 'package:flutter_assingment_20/screens/createpage.dart';
import './screens/homepage.dart';
import '../models/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Contacts> contactList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyHomePage.nameRoute,
      routes: {
        MyHomePage.nameRoute: (context) => MyHomePage(),
        AddContact.nameRoute: (context) => AddContact(
              addContacts: (Contacts contacts) {
                setState(() {
                  contactList.add(contacts);
                });
              },
            ),
      },
    );
  }
}
