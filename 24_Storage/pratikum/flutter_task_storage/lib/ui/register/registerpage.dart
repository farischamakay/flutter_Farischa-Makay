import 'package:flutter/material.dart';
import 'package:flutter_task_storage/ui/home/homepage.dart';
import 'package:flutter_task_storage/ui/register/registerpageprovider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    super.initState();
    var state = context.read<RegisterProvider>();
    state.getIsLogin().then((value) {
      if (value) {
        Navigator.pushReplacementNamed(context, HomePage.routeName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Consumer<RegisterProvider>(
            builder: (context, provider, _) {
              return TextFormField(
                onChanged: (value) => provider.setName(value),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    errorText: provider.name.error ? provider.name.msg : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Name'),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Consumer<RegisterProvider>(
            builder: (context, provider, _) {
              return TextFormField(
                onChanged: (value) => provider.setEmail(value),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    errorText: provider.email.error ? provider.email.msg : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Email'),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Consumer<RegisterProvider>(
            builder: (context, provier, _) {
              return TextFormField(
                onChanged: (value) => provier.setNoTelpn(value),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    errorText:
                        provier.noTelpn.error ? provier.noTelpn.msg : null,
                    border: const OutlineInputBorder(),
                    labelText: 'Nomor Telepon'),
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          Consumer<RegisterProvider>(
            builder: (context, provider, _) {
              return TextFormField(
                onChanged: (value) => provider.setPassword(value),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  errorText:
                      provider.password.error ? provider.password.msg : null,
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                ),
                obscureText: true,
              );
            },
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () {
                context.read<RegisterProvider>().submit(() {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                }, () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('isi data yang benar bro')));
                });
              },
              child: const Text('Submit'))
        ],
      ),
    );
  }
}
