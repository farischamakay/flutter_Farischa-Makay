import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'models/data.dart';

class MyService {
  final Dio dio = Dio();

  static Future fetchUsers() async {
    try {
      final Response response = await Dio().get('https://reqres.in/api/users');
      debugPrint(response.data.toString());

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  // Future createUser({
  //   required String name,
  //   required String job,
  // }) async {
  //   try {
  //     final Response response = await dio.post(
  //       'https://reqres.in/api/users',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );
  //     debugPrint(response.data.toString());

  //     final Person _userModel = Person.json(response.data);
  //     return response.data;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future UpdateUser({
  //   required String name,
  //   required String job,
  // }) async {
  //   try {
  //     final Response response = await dio.put(
  //       'https://reqres.in/api/users/4',
  //       data: {
  //         'name': name,
  //         'job': job,
  //       },
  //     );

  //     debugPrint(response.data.toString());

  //     return response.data;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // Future deleteUser() async {
  //   try {
  //     final Response response =
  //         await dio.delete('https://reqres.in/api/users/4');

  //     debugPrint(response.data.toString());

  //     return response.data;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
