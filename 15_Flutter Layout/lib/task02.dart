import 'package:flutter/material.dart';
import 'models/icons.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Assingment GridView'),
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: CircleAvatar(
                  backgroundImage: AssetImage(itemz[index].imgPath),
                ),
              ),
            );
          },
          itemCount: itemz.length,
        ));
  }
}
