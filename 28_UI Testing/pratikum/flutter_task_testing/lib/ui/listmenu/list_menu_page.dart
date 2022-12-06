import 'package:flutter/material.dart';
import 'package:flutter_task_testing/ui/listmenu/list_menu_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../utils/result_state.dart';

class ListMenuPage extends StatelessWidget {
  static const routeName = '/list-menu';

  const ListMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Menu'),
      ),
      body: Consumer<ListMenuViewModel>(
        builder: (context, viewModel, _) {
          switch (viewModel.resultState) {
            case ResultState.Loaded:
              if (viewModel.list.isNotEmpty) {
                return ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: viewModel.list.length,
                    itemBuilder: (context, position) {
                      return Card(
                        key: Key("${viewModel.list[position].id}"),
                        child: ListTile(
                          leading: Text(viewModel.list[position].name),
                        ),
                      );
                    });
              } else {
                return const Center(
                  child: Text('Kosong'),
                );
              }
            case ResultState.Loading:
              return const Center(child: CircularProgressIndicator());
            case ResultState.Error:
              return const Center(child: Text('Error'));
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
