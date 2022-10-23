import 'package:flutter/material.dart';
import 'package:flutter_assginment_23/providers/contact_provider.dart';
import 'package:flutter_assginment_23/screens/contact_screen.dart';
import 'package:flutter_assginment_23/screens/homepage.dart';
import 'package:flutter_assginment_23/screens/task_01_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: HomePage.nameRoute,
        routes: {
          HomePage.nameRoute: (context) => HomePage(),
          AnimationTask.nameRoute: (context) => AnimationTask(),
          ContactScreen.nameRoute: (context) => ContactScreen(),
        },
      ),
    );
  }
}
