import 'package:flutter/material.dart';
import 'package:flutter_weekly1_task_app/ui/home/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.android),
        title: const Text('Contact Center'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 2.0,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Do you have any trouble? Please fill the form below',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  child: Image.network(
                    'https://ouch-cdn2.icons8.com/ZLfoQF897zuuuTyGKKPG-Ox1MZ9tXLLxTU91Elu8Qfk/rs:fit:256:192/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNjA4/L2JiNmVkMzNlLTE4/MGMtNDI3Ny1hM2Uw/LWUwNDIwN2JjYmMz/MC5zdmc.png',
                    width: 150,
                    height: 150,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contact us',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                      'Need to get in touch with us? Either fill out the form with your inquiry or find the department email you like to contact below.'),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      context.read<HomeProvider>().firstName = value;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: 'First Name', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      context.read<HomeProvider>().lastName = value;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: 'Last Name', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      context.read<HomeProvider>().email = value;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        labelText: 'Email', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      context.read<HomeProvider>().content = value;
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: 'What can we help you with?',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 2,
                    textAlignVertical: TextAlignVertical.top,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Data'),
                                content: Text(
                                    context.read<HomeProvider>().showData()),
                              );
                            });
                      },
                      child: const Text('Submit'))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
