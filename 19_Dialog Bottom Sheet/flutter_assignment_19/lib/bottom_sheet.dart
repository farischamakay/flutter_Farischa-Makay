import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_assignment_19/models/data.dart';

class ImageDetails extends StatelessWidget {
  String img;
  String dt;
  String tm;

  ImageDetails(
      {required this.img, required this.dt, required this.tm, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(height: 20),
          Text(
            '$dt',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            '$tm',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
