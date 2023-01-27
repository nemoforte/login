import 'package:login/models/user_model.dart';
import 'package:login/repositories/login_repository.dart';

class LoginService {
  Future<UserModel?> login(String email, String password) async {
    final LoginRepository loginRepository = LoginRepository();
    final Map<String, dynamic>? body = await loginRepository.repo(email, password);
    if (body == null) {
      return null;
    } else {
      return UserModel(email: email, token: body['token'] as String);
    }
  }
}
