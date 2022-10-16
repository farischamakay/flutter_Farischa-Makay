import 'package:flutter/material.dart';
import '../models/contact.dart';
import 'createpage.dart';

class MyHomePage extends StatefulWidget {
  static const nameRoute = '/homepage';
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Contacts> contactList = [];
  void addContactData(Contacts contacts) {
    setState(() {
      contactList.add(contacts);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
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
          ///APABILA TANPA MENGGUNAKAN ROUTES
          // Navigator.push(context, MaterialPageRoute(builder: (_) {
          //   return AddContact(addContacts: addContactData);
          // }));

          Navigator.pushNamed(context, AddContact.nameRoute);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
