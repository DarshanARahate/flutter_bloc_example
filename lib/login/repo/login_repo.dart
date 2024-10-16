import 'dart:convert';

import 'package:flutter_bloc_example/login/model/request/login_request.dart';
import 'package:flutter_bloc_example/login/model/response/login_response.dart';
import 'package:http/http.dart' as http;

class LoginRepo {
  Future<LoginResponse> login(String userName, String password) async {
    var url = "https://dummyjson.com/auth/login";
    LoginRequest loginRequest =
        LoginRequest(username: userName, password: password);

    http.Response response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(loginRequest.toJson()));

    try {
      if (response.statusCode == 200) {
        var resp = response.body;
        var responseBody = jsonDecode(resp);
        return LoginResponse.fromJson(responseBody);
      } else {
        return LoginResponse();
      }
    } catch (e) {
      throw Exception("Invalid Data");
    }
  }
}
