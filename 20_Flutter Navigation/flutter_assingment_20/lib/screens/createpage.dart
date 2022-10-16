import 'package:flutter/material.dart';
import '../models/contact.dart';

class AddContact extends StatefulWidget {
  static const nameRoute = '/createContact';

  AddContact({super.key, required this.addContacts});

  final Function(Contacts) addContacts;

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    @override
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: const EdgeInsets.all(5.0),
        child: TextField(
          decoration: InputDecoration(
              labelText: hint,
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlue))),
          controller: controller,
        ),
      );
    }

    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            buildTextField('name', nameController),
            buildTextField('phone', phoneController),
            ElevatedButton(
                onPressed: () {
                  final user =
                      Contacts(nameController.text, phoneController.text);

                  widget.addContacts(user);

                  Navigator.of(context).pop();
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
