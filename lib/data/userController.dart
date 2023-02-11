import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user.dart';
import '../values/preferences.dart';

class UserController {
  final dio = new Dio();
  final url = "http://localhost:3333";

  Future<bool> cadastroUser(User data) async {
    try {
      final response = await dio
          .post('$url/register', data: data.toJson());
      
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(
        PreferencesKeys.activeUser,
        json.encode({"token": response.data["token"]}),
      );

      return true;
    } catch (e) {
      print('error: $e');
      return false;
    }
    // print(data);
  }

  Future<bool> loginAuth(String email, String password) async {
    try {
      final response = await dio
          .post('$url/login', data: {"email": email, "password": password});
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(
        PreferencesKeys.activeUser,
        json.encode({"token": response.data["token"]}),
      );

      // SharedPreferences prefs1 = await SharedPreferences.getInstance();
      // String? jsonUser = prefs1.getString(PreferencesKeys.activeUser);
      // print('json: $jsonUser');
      return true;
    } catch (e) {
      print('error: $e');
      return false;
    }
  }
}
