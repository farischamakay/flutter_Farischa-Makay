import 'package:flutter/material.dart';
import 'package:flutter_assignment_22/models/contact.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../viewmodelcontact/contact_bloc.dart';
import 'package:nanoid/non_secure.dart';

class AddContact extends StatefulWidget {
  static const nameRoute = '/addcontact';
  const AddContact({super.key});

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  String? _existingContactId;
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            buildTextField('name', nameController),
            buildTextField('number', phoneController),
            ElevatedButton(
                onPressed: () {
                  final newContact = Contact(
                      id: _existingContactId ?? nanoid(10),
                      name: nameController.text,
                      number: phoneController.text);

                  context.read<ContactBloc>().add(SaveContact(newContact));

                  Navigator.of(context).pop();
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
