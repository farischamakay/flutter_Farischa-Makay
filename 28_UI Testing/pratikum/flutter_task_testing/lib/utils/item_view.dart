import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_task_testing/data/model/users_response.dart';

class ItemView extends StatelessWidget {
  final Users contact;

  ItemView({Key? key, required this.contact}) : super(key: key);

  final List<Color> _randomColors = [
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.deepPurple,
    Colors.blueGrey,
    Colors.brown,
    Colors.green,
    Colors.indigo,
    Colors.lightGreen,
    Colors.orange,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          contact.avatar,
        ),
      ),
      title: Text("${contact.firstName} ${contact.lastName}"),
      subtitle: Text(contact.email),
    );
  }
}
