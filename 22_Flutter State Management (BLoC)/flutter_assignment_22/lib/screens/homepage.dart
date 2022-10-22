import 'package:flutter/material.dart';
import 'package:flutter_assignment_22/screens/create_contact.dart';
import 'package:flutter_assignment_22/widget/contact_item.dart';

class Homepage extends StatefulWidget {
  static const nameRoute = '/homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: ContactItem(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).pushNamed(AddContact.nameRoute);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
