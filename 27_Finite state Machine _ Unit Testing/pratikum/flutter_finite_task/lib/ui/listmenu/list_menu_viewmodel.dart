import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../data/model/menu_model.dart';
import '../../data/remote/users_service.dart';
import '../../utils/ResultState.dart';

class ListMenuViewModel with ChangeNotifier {
  UsersService service;

  ListMenuViewModel(this.service) {
    _fetchMenu();
  }

  late ResultState _resultState = ResultState.Nothing;

  ResultState get resultState => _resultState;
  late String message = '';
  List<MenuModel> list = [];

  Future<dynamic> _fetchMenu() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response = await service.fetchMenu();
      list.addAll(response.menus);
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }
}
