import 'package:flutter/material.dart';
import 'package:flutter_assignment_22/viewmodelcontact/contact_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './screens/homepage.dart';
import './screens/create_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactBloc>(
      create: (context) => ContactBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: Homepage.nameRoute,
        routes: {
          Homepage.nameRoute: (context) => Homepage(),
          AddContact.nameRoute: (context) => AddContact()
        },
      ),
    );
  }
}
