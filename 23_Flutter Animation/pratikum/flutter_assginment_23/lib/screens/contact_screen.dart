import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/contact_provider.dart';
import '../widget/contact_list.dart';
import 'add_contact_screen.dart';

class ContactScreen extends StatefulWidget {
  static const nameRoute = '/contactScreen';
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const AddContact();
              },
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                final tween = Tween(
                  begin: 0.0,
                  end: 1.0,
                );
                return FadeTransition(
                  opacity: animation.drive(tween),
                  child: child,
                );
              },
            ),
          );
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
