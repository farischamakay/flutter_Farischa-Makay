import 'package:flutter/material.dart';
import 'package:flutter_finite_task/ui/listmenu/list_menu_viewmodel.dart';
import 'package:flutter_finite_task/utils/ResultState.dart';
import 'package:provider/provider.dart';

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
          if (viewModel.resultState == ResultState.Loaded) {
            if (viewModel.list.isNotEmpty) {
              return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: viewModel.list.length,
                  itemBuilder: (context, position) {
                    return Card(
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
          } else if (viewModel.resultState == ResultState.Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (viewModel.resultState == ResultState.Error) {
            return const Center(child: Text('Error'));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
