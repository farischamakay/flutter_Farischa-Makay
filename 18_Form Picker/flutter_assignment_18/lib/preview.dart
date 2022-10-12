import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  String publishDate;
  Color colorPick;
  String textDecription;
  PreviewPage(this.colorPick, this.publishDate, this.textDecription,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Preview'),
        ),
        drawer: Drawer(),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                color: colorPick,
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Published $publishDate'),
                  Row(
                    children: [
                      const Text('color : '),
                      Icon(
                        Icons.circle,
                        color: colorPick,
                        size: 12,
                      )
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                '$textDecription',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
