import 'package:flutter/material.dart';
import 'package:flutter_task_testing/ui/list/list_page.dart';
import 'package:flutter_task_testing/ui/listmenu/list_menu_page.dart';
import 'package:flutter_task_testing/utils/result_state.dart';
import 'package:provider/provider.dart';

import 'home_viewmodel.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextFormField(
            onChanged: (value) => context.read<HomeViewModel>().name,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: 'Name'),
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            onChanged: (value) => context.read<HomeViewModel>().job,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                labelText: 'Job', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeViewModel>().fetchListUser();
                    },
                    child: const Text('GET')),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeViewModel>().createUser();
                    },
                    child: const Text('POST')),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeViewModel>().updateUser();
                    },
                    child: const Text('PUT')),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<HomeViewModel>().deleteUser();
                    },
                    child: const Text('DELETE')),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ListPage.routeName);
                    },
                    child: const Text('Goto List')),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ListMenuPage.routeName);
                    },
                    child: const Text('Goto List Menu')),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Result',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Consumer<HomeViewModel>(
            builder: (context, provider, _) {
              switch (provider.resultState) {
                case ResultState.Loading:
                  return const Center(child: CircularProgressIndicator());
                case ResultState.Loaded:
                  return Text("${provider.response}");
                case ResultState.Error:
                  return Text(provider.message.toString());
                default:
                  return Container();
              }
            },
          )
        ],
      ),
    );
  }
}
