import 'package:flutter/material.dart';
import 'package:flutter_assginment_23/screens/contact_screen.dart';
import 'package:flutter_assginment_23/screens/task_01_screen.dart';

class HomePage extends StatefulWidget {
  static const nameRoute = '/homepageTask';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Main Task Animation')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AnimationTask.nameRoute);
                  },
                  child: const Text('Task 01')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ContactScreen.nameRoute);
                  },
                  child: const Text('Task 02'))
            ],
          ),
        ));
  }
}
