import 'dart:async';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? indicatorValue;
  Timer? timer;

  String time() {
    return "${DateTime.now().hour < 10 ? "0${DateTime.now().hour}" : DateTime.now().hour} : ${DateTime.now().minute < 10 ? "0${DateTime.now().minute}" : DateTime.now().minute} : ${DateTime.now().second < 10 ? "0${DateTime.now().second}" : DateTime.now().second} ";
  }

  updateSeconds() {
    timer = Timer.periodic(
        Duration(seconds: 1),
        (Timer timer) => setState(() {
              indicatorValue = DateTime.now().second / 60;
            }));
  }

  @override
  void initState() {
    super.initState();
    indicatorValue = DateTime.now().second / 60;
    updateSeconds();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Digital clock Assignment'),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Center(
                child: Container(
              margin: const EdgeInsets.all(36.0),
              width: 360,
              height: 360,
              child: Center(
                child: Text(
                  time(),
                  style: const TextStyle(
                      fontSize: 40.0, fontWeight: FontWeight.normal),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
