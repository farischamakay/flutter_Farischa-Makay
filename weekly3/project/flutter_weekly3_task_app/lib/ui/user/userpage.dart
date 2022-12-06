import 'package:flutter/material.dart';
import 'package:flutter_weekly3_task_app/ui/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: Center(
        child: Text(context.read<HomeViewModel>().showData()),
      ),
    );
  }
}
