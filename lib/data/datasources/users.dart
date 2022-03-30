import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:portfolio/app/api_config.dart';
import 'package:portfolio/app/error/excpetions.dart';
import 'package:portfolio/data/models/user.dart';

class Users {
  final http.Client httpClient;

  Users({required this.httpClient});

  Future<String> addUser(Map<String, dynamic> newUser) async {
    final response = await http.post(Uri.parse('${ApiConfig.host}/people/'),
        headers: {'Application-Content': 'application/json'},
        body: jsonEncode(newUser));

    if (response.statusCode == 200) {
      return 'User added';
    } else {
      throw ServerException();
    }
  }

  Future<User> getUser(String id) async {
    final response =
        await http.get(Uri.parse('${ApiConfig.host}/people/id/$id/'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;

      return User.fromJson(json);
    } else {
      throw ServerException();
    }
  }

  Future<String> deleteUser(String id) async {
    final response =
        await http.delete(Uri.parse('${ApiConfig.host}/people/id/$id/'));

    if (response.statusCode == 200) {
      return 'Deleted successfully';
    } else {
      throw ServerException();
    }
  }

  Future<String> updateUser(Map<String, dynamic> newUser) async {
    final response = await http.patch(Uri.parse('${ApiConfig.host}/people/'),
        headers: {'Application-Content': 'application/json'},
        body: jsonEncode(newUser));

    if (response.statusCode == 200) {
      return 'User updated';
    } else {
      throw ServerException();
    }
  }

}
