import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_mvvm/data/model/body_users.dart';
import 'package:flutter_task_mvvm/data/model/users_response.dart';
import 'package:flutter_task_mvvm/data/remote/users_service.dart';

import '../../utils/ResultState.dart';

class HomeViewModel extends ChangeNotifier {
  UsersService service;

  HomeViewModel({required this.service});

  late ResultState _resultState = ResultState.Nothing;

  ResultState get resultState => _resultState;
  late String message = '';
  List<Users> list = [];
  Map<String, dynamic>? response;

  String name = '';
  String job = '';

  void setName(String name) {
    this.name = name;
  }

  void setJob(String job) {
    this.job = job;
  }

  Future<dynamic> fetchListUser() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response = await service.listUsers();
      this.response = response;
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }

  Future<dynamic> createUser() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response = await service.createUsers(BodyUsers(name: name, job: job));
      this.response = response;
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }

  Future<dynamic> updateUser() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response =
          await service.editUsers(BodyUsers(name: name, job: job), 4);
      this.response = response;
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }

  Future<dynamic> deleteUser() async {
    _resultState = ResultState.Loading;
    notifyListeners();

    try {
      _resultState = ResultState.Loaded;
      var response = await service.deleteUsers(4);
      this.response = response;
      notifyListeners();
    } on DioError catch (e) {
      message = e.message;
      _resultState = ResultState.Error;
      notifyListeners();
    }
  }
}
