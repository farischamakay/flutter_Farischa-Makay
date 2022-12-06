import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_task_mvvm/data/model/body_users.dart';
import 'package:flutter_task_mvvm/utils/CustomInterceptors.dart';

import '../model/users_response.dart';

class UsersService {
  final String _baseUrl = "https://reqres.in/";
  final Dio _dio = Dio();

  UsersService() {
    _dio.interceptors.add(CustomInterceptors());
  }

  Future<Map<String, dynamic>> listUsers() async {
    try {
      var response = await _dio.get("${_baseUrl}api/users/");
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<UsersResponse> fetchUsers() async {
    try {
      var response = await _dio.get("${_baseUrl}api/users/");
      return UsersResponse.fromJson(response.data);
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<Map<String, dynamic>> createUsers(BodyUsers user) async {
    try {
      var response =
          await _dio.post("${_baseUrl}api/users/", data: user.toJson());
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<Map<String, dynamic>> editUsers(BodyUsers user, int id) async {
    try {
      var response =
          await _dio.put("${_baseUrl}api/users/$id", data: user.toJson());
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }

  Future<Map<String, dynamic>> deleteUsers(int id) async {
    try {
      var response = await _dio.delete("${_baseUrl}api/users/$id");
      return json.decode(response.toString());
    } on DioError catch (ex) {
      String errorMessage = json.decode(ex.response.toString())["errorMessage"];
      throw Exception(errorMessage);
    }
  }
}
