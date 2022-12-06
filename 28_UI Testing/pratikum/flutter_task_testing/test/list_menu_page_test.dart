import 'package:flutter/material.dart';
import 'package:flutter_task_testing/data/model/menu_model.dart';
import 'package:flutter_task_testing/data/remote/users_service.dart';
import 'package:flutter_task_testing/ui/listmenu/list_menu_page.dart';
import 'package:flutter_task_testing/ui/listmenu/list_menu_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'users_service_test.mocks.dart';

@GenerateMocks([UsersService])
void main() {
  late MenuModel menuModel;
  setUp(() {
    menuModel = MenuModel(id: 1, name: "basok");
  });

  group('Display Home', () {
    UsersService service = MockUsersService() as UsersService;
    when(service.fetchMenu())
        .thenAnswer((_) async => ResponseMenu(menus: [menuModel]));

    testWidgets('Display Menu List', (tester) async {
      await tester.pumpWidget(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => ListMenuViewModel(service)),
          ],
          child: const MaterialApp(home: ListMenuPage()),
        ),
      );

      var title = find.text('List Menu');
      await tester.ensureVisible(title);

      var loading = find.byType(CircularProgressIndicator);
      await tester.ensureVisible(loading);
      
      expect(title, findsOneWidget);
      expect(loading, findsOneWidget);
    });
  });
}
