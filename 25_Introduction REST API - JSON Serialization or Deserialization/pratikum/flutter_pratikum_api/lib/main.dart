import 'package:flutter/material.dart';
import 'services.dart';
import 'dispaly.dart';
import 'models/data.dart';

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
      home: const MyHomePage(title: 'Home'),
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
  Person? person;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  TextField(
                    autofocus: true,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        hintText: 'Name',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    autofocus: true,
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.grey)),
                        hintText: 'Job',
                        hintStyle:
                            const TextStyle(color: Colors.grey, fontSize: 15)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () async {
                      Person? result = await MyService.fetchUsers();
                    },
                    child: const Text('GET'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () async {},
                    child: const Text('POST'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {},
                    child: const Text('PUT'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {},
                    child: const Text('DELETE'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Result',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              person != null
                  ? Display(person: person!)
                  : const Text(
                      '-',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
            ],
          ),
        ));
  }
}
