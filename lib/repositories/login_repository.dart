import 'package:dio/dio.dart';

class LoginRepository {
  Future<Map<String, dynamic>?> repo(String email, String password) async {
    const String api = 'https://reqres.in/api/login';
    final Map<String, String> data = <String, String>{'email': email, 'password': password};
    final Dio dio = Dio();
    Response<Map<String, dynamic>> response;
    response = await dio.post<Map<String, dynamic>>(api, data: data);
    if (response.statusCode == 200) {
      final Map<String, dynamic>? body = response.data;
      return body;
    } else {
      return null;
    }
  }
}
