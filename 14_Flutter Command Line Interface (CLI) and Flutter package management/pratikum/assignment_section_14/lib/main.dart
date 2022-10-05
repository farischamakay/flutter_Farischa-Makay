import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Badges Assignment'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            _chip(),
            _badge(),
            _barcode1(),
            _barcode2(),
            _button(context),
          ],
        )));
  }
}

Widget _chip() {
  return Chip(
    padding: EdgeInsets.all(0),
    backgroundColor: Colors.deepPurple,
    label: Text('BADGE', style: TextStyle(color: Colors.white)),
  );
}

Widget _badge() {
  return Badge(
    toAnimate: false,
    shape: BadgeShape.square,
    badgeColor: Colors.deepPurple,
    borderRadius: BorderRadius.circular(8),
    badgeContent: Text('BADGE', style: TextStyle(color: Colors.white)),
  );
}

Widget _barcode1() {
  return BarcodeWidget(
    padding: EdgeInsets.all(5),
    barcode: Barcode.code128(),
    data: 'Alterra Academy',
  );
}

Widget _barcode2() {
  return BarcodeWidget(
    padding: EdgeInsets.all(5),
    barcode: Barcode.code128(),
    data: 'Flutter Asik',
  );
}

Widget _button(BuildContext context) {
  return TextButton(
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.focused)) return Colors.red;
        if (states.contains(MaterialState.hovered)) return Colors.green;
        if (states.contains(MaterialState.pressed)) return Colors.blue;
        return null; // Defer to the widget's default.
      }),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
    },
    child: Text('Next'),
  );
}

Widget _barcode3() {
  return BarcodeWidget(
    padding: EdgeInsets.all(5),
    barcode: Barcode.code128(),
    data: 'Farischa Makay',
  );
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Barcode Assignment'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            _barcode3(),
          ],
        )));
  }
}
