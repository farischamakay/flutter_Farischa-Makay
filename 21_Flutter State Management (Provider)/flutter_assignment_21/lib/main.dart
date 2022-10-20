import 'package:flutter/material.dart';
import 'package:flutter_assignment_21/providers/contact_provider.dart';
import 'package:flutter_assignment_21/screens/add_contact.dart';
import 'package:flutter_assignment_21/screens/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Homepage.nameRoute,
        routes: {
          Homepage.nameRoute: (context) => Homepage(),
          AddContact.nameRoute: (context) => AddContact(),
        });
  }
}
