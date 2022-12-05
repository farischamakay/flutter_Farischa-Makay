import 'package:flutter/material.dart';
import 'package:flutter_task_storage/data/pref/shared_pref.dart';
import 'package:flutter_task_storage/ui/home/homepage.dart';
import 'package:flutter_task_storage/ui/home/homepageprovider.dart';
import 'package:flutter_task_storage/ui/register/registerpage.dart';
import 'package:flutter_task_storage/ui/register/registerpageprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => RegisterProvider(
                SharedPref(sharedpref: SharedPreferences.getInstance()))),
        ChangeNotifierProvider(
            create: (_) => HomeProvider(
                SharedPref(sharedpref: SharedPreferences.getInstance()))),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const RegisterPage(),
        onGenerateRoute: (setting) {
          switch (setting.name) {
            case HomePage.routeName:
              return _createRoute(const HomePage());
            case RegisterPage.routeName:
              return _createRoute(const RegisterPage());
          }
          return null;
        },
      ),
    );
  }

  Route _createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
