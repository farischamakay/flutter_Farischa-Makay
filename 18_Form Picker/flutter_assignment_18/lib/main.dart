import 'package:flutter/material.dart';
import 'package:flutter_assignment_18/preview.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Create Post'),
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
  TextEditingController _textarea = TextEditingController();
  final TextEditingController _dueDate = TextEditingController();
  Color _pickerColor = Color(0xff443a49);
  final currentDate = DateTime.now();

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    setState(() {
      final file = result.files.first;
      _openFile(file);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        drawer: Drawer(),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              buildFilePicker(context),
              buildDatePicker(context),
              buildColorPicker(context),
              const Padding(padding: EdgeInsets.all(3.0)),
              const Text(
                'Cover',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                  controller: _textarea,
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder())),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PreviewPage(
                            _pickerColor, _dueDate.text, _textarea.text)));
                  },
                  child: const Text('Simpan'))
            ],
          ),
        ));
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Cover',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
            onPressed: () {
              _pickFile();
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                backgroundColor: Colors.grey),
            child: const Text('Pilih File')),
        const Padding(padding: EdgeInsets.all(3.0))
      ],
    );
  }

  Widget buildDatePicker(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Publish At',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Padding(padding: EdgeInsets.all(3.0)),
        TextFormField(
          controller: _dueDate,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'dd/mm/yyyy'),
          onTap: () async {
            DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2019),
                lastDate: DateTime(DateTime.now().year + 3));

            if (selectedDate != null) {
              setState(() {
                _dueDate.text = DateFormat('dd/MM/yyyy').format(selectedDate);
              });
            }
          },
        ),
      ],
    );
  }

  Widget buildColorPicker(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Color Theme',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Padding(padding: EdgeInsets.all(3.0)),
        TextFormField(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Pick your color'),
                    content: BlockPicker(
                      pickerColor: _pickerColor,
                      onColorChanged: (color) {
                        setState(() {
                          _pickerColor = color;
                        });
                      },
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Simpan'))
                    ],
                  );
                });
          },
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Pick a color'),
        ),
      ],
    );
  }
}
