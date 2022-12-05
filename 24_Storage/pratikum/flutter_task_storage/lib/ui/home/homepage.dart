import 'package:flutter/material.dart';
import 'package:flutter_task_storage/ui/home/homepageprovider.dart';
import 'package:flutter_task_storage/ui/register/registerpage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPref With Provider'),
      ),
      body: Center(
        child: Consumer<HomeProvider>(
          builder: (context, provider, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name = ${provider.name}'),
                Text('Email = ${provider.email}'),
                Text('No Telpon = ${provider.noTlpn}'),
                ElevatedButton(
                    onPressed: () {
                      provider.clear();
                      Navigator.pushReplacementNamed(
                          context, RegisterPage.routeName);
                    },
                    child: const Text('Logout'))
              ],
            );
          },
        ),
      ),
    );
  }
}
