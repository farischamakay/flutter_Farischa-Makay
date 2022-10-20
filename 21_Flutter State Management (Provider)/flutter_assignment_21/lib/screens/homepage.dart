import 'package:flutter/material.dart';
import 'package:flutter_assignment_21/screens/add_contact.dart';
import '../widgets/contact_item.dart';

import 'package:flutter_assignment_21/providers/contact_provider.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  static const nameRoute = '/homepage';
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final dataContact = Provider.of<ContactProvider>(context).contact;
    return Scaffold(
      appBar: AppBar(title: const Text('Contact')),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.separated(
            itemBuilder: (context, index) {
              final contact = dataContact.elementAt(index);
              return ContactItem(contact);
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: dataContact.length),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).pushNamed(AddContact.nameRoute);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
