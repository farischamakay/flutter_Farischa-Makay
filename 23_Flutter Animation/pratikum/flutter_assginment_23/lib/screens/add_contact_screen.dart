import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/contact.dart';
import '../providers/contact_provider.dart';

class AddContact extends StatefulWidget {
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
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
            buildTextField('number', phoneController),
            ElevatedButton(
                onPressed: () {
                  final user = Contact(
                      name: nameController.text, number: phoneController.text);

                  Provider.of<ContactProvider>(context, listen: false)
                      .addNewContact(user);

                  Navigator.of(context).pop();
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
