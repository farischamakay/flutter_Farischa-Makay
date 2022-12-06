import 'package:flutter/material.dart';
import 'package:flutter_task_testing/ui/list/list_viewmodel.dart';
import 'package:flutter_task_testing/utils/item_view.dart';
import 'package:flutter_task_testing/utils/result_state.dart';
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
          switch (viewModel.resultState) {
            case ResultState.Loaded:
              return ListView.builder(
                  itemCount: viewModel.list.length,
                  itemBuilder: (context, indext) {
                    return ItemView(contact: viewModel.list[indext]);
                  });
            case ResultState.Loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case ResultState.Error:
            default:
              return Container();
          }
        },
      ),
    );
  }
}
