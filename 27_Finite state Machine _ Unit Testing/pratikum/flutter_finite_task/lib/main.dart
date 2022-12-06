import 'package:flutter/material.dart';
import 'package:flutter_finite_task/data/remote/users_service.dart';
import 'package:flutter_finite_task/ui/home/home_viewmodel.dart';
import 'package:flutter_finite_task/ui/list/list_page.dart';
import 'package:flutter_finite_task/ui/list/list_viewmodel.dart';
import 'package:flutter_finite_task/ui/listmenu/list_menu_page.dart';
import 'package:flutter_finite_task/ui/listmenu/list_menu_viewmodel.dart';
import 'package:provider/provider.dart';

import 'ui/home/home_page.dart';

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
            create: (_) => HomeViewModel(service: UsersService())),
        ChangeNotifierProvider(create: (_) => ListViewModel(UsersService())),
        ChangeNotifierProvider(
            create: (_) => ListMenuViewModel(UsersService())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case ListPage.routeName:
              return MaterialPageRoute(builder: (context) => const ListPage());
            case ListMenuPage.routeName:
              return MaterialPageRoute(
                  builder: (context) => const ListMenuPage());
          }
          return null;
        },
      ),
    );
  }
}
