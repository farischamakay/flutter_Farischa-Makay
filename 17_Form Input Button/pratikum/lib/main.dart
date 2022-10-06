import 'package:flutter/material.dart';
import 'package:flutter_assignment_17/models/contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment 17',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Contacts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contacts> contactList = [];

  @override
  Widget build(BuildContext context) {
    void addContactData(Contacts contacts) {
      setState(() {
        contactList.add(contacts);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
          itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                contactList[index].name[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(contactList[index].name),
            subtitle: Text(contactList[index].phone),
          ),
          itemCount: contactList.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return AddContact(addContacts: addContactData);
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddContact extends StatelessWidget {
  const AddContact({super.key, required this.addContacts});

  final Function(Contacts) addContacts;

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
            buildTextField('phone', phoneController),
            ElevatedButton(
                onPressed: () {
                  final user =
                      Contacts(nameController.text, phoneController.text);

                  addContacts(user);

                  Navigator.of(context).pop();
                },
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
