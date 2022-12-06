import 'package:flutter/material.dart';
import 'package:flutter_weekly2_task_app/ui/home/home_viewmodel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Container(),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About us'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.android),
            SizedBox(
              width: 16,
            ),
            Text('Contact Center')
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _welcomeSection(),
          const SizedBox(
            height: 300,
          ),
          _aboutSection(),
          const SizedBox(
            height: 16,
          ),
          _contactUs(context)
        ],
      ),
    );
  }

  Widget _aboutSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text(
              'About us',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at pellentesque justo. Proin sem dolor, malesuada ac aliquam nec, tempus in est. Pellentesque scelerisque leo diam, sit amet scelerisque elit mollis nec. Sed consequat nisi ultrices pulvinar ullamcorper. Suspendisse sed nulla ultrices, consequat metus sed, mollis urna. ',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Program',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Program 1'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              title: Text('Program 2'),
              trailing: Icon(Icons.navigate_next),
            )
          ],
        ),
      ),
    );
  }

  Widget _welcomeSection() {
    return Card(
      elevation: 2.0,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: const [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
    );
  }

  Widget _contactUs(BuildContext context) {
    return Card(
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
                context.read<HomeViewModel>().firstName = value;
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
                context.read<HomeViewModel>().lastName = value;
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
                context.read<HomeViewModel>().email = value;
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
                context.read<HomeViewModel>().content = value;
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
                          content:
                              Text(context.read<HomeViewModel>().showData()),
                          actions: [
                            ElevatedButton(
                                onPressed: () {},
                                child: const Text('Data User'))
                          ],
                        );
                      });
                },
                child: const Text('Submit'))
          ],
        ),
      ),
    );
  }
}
