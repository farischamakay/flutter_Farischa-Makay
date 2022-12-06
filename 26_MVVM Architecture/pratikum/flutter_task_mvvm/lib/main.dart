import 'package:flutter/material.dart';
import 'package:flutter_task_mvvm/ui/home/home_viewmodel.dart';
import 'package:flutter_task_mvvm/ui/list/list_page.dart';
import 'package:flutter_task_mvvm/ui/list/list_viewmodel.dart';
import 'package:provider/provider.dart';

import 'data/remote/users_service.dart';
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
        ChangeNotifierProvider(
            create: (_) => ListViewModel(UsersService())),
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
          }
          return null;
        },
      ),
    );
  }
}
