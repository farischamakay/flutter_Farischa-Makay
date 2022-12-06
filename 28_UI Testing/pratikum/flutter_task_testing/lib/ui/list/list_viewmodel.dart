import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../data/model/users_response.dart';
import '../../data/remote/users_service.dart';
import '../../utils/result_state.dart';

class ListViewModel with ChangeNotifier {
  UsersService service;

  ListViewModel(this.service) {
    _fetchListUser();
  }

  late ResultState _resultState = ResultState.Initial;

  ResultState get resultState => _resultState;
  late String message = '';
  List<Users> list = [];

  Future<dynamic> _fetchListUser() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response = await service.fetchUsers();
      list.addAll(response.data);
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }
}
