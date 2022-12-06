import 'package:flutter/material.dart';
import 'package:flutter_finite_task/ui/list/list_viewmodel.dart';
import 'package:flutter_finite_task/utils/ResultState.dart';
import 'package:flutter_finite_task/utils/item_view.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  static const routeName = '/list-page';

  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact'),
      ),
      body: Consumer<ListViewModel>(
        builder: (context, viewModel, _) {
          if (viewModel.resultState == ResultState.Loaded) {
            return ListView.builder(
                itemCount: viewModel.list.length,
                itemBuilder: (context, indext) {
                  return ItemView(contact: viewModel.list[indext]);
                });
          } else if (viewModel.resultState == ResultState.Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
