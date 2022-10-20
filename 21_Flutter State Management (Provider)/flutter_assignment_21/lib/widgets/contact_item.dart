import 'package:flutter/material.dart';
import 'package:flutter_assignment_21/providers/contact_provider.dart';
import 'package:provider/provider.dart';
import '../models/contact.dart';

class ContactItem extends StatelessWidget {
  final Contact contact;
  const ContactItem(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green,
        child: Text(
          contact.name[0],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text(contact.name),
      subtitle: Text(contact.number),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: const Text('Hapus Contact'),
                  content: Text(
                    'Apakah anda yakin menghapus data ${contact.name}?',
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Provider.of<ContactProvider>(context, listen: false)
                              .deleteContact(contact.id);
                          Navigator.pop(context);
                        },
                        child: const Text('Yakin')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Tidak')),
                  ],
                );
              });
        },
      ),
    );
  }
}
