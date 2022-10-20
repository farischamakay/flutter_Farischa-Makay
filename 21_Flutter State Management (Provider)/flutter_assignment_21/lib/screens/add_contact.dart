import 'package:flutter/material.dart';
import 'package:flutter_assignment_21/providers/contact_provider.dart';
import 'package:provider/provider.dart';
import '../models/contact.dart';

class AddContact extends StatefulWidget {
  static const nameRoute = '/addcontact';
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  @override
  Widget build(BuildContext context) {
    Widget buildTextField(String hint, TextEditingController controller) {
      return Container(
        margin: EdgeInsets.all(5.0),
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
        padding: EdgeInsets.all(10.0),
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
