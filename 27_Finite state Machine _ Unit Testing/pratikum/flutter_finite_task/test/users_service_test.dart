
import 'package:flutter_finite_task/data/model/menu_model.dart';
import 'package:flutter_finite_task/data/remote/users_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'users_service_test.mocks.dart';

@GenerateMocks([UsersService])
void main() {
  group('UserService', () {
    MockUsersService service = MockUsersService();

    test('get all menu returns data', () async {
      when(service.fetchMenu()).thenAnswer((_) async => ResponseMenu(menus: [
        MenuModel(id: 1, name: "basok")
      ]));

      var menus = await service.fetchMenu();
      expect(menus.menus.isNotEmpty, true);
    });
  });
}