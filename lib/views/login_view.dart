import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/models/user_model.dart';
import 'package:login/services/login_service.dart';

import 'package:login/util/auth_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginService _loginService = LoginService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  Future<void> _login() async {
    if (_emailController.text.isEmpty || _passController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Blank credentials')));
    } else {
      UserModel? user = await _loginService.login(_emailController.text, _passController.text);
      if (user == null) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Something is no yes')));
      } else {
        context.read<AuthController>().authTrue();
        await AutoRouter.of(context).replace(LoggedRoute(user: user));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthController, bool>(
      builder: (BuildContext context, bool authenticated) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("email : 'eve.holt@reqres.in', password: 'cityslicka'"),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder(), suffixIcon: Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _passController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder(), suffixIcon: Icon(Icons.password)),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  OutlinedButton.icon(
                    onPressed: _login,
                    icon: const Icon(Icons.login, size: 18),
                    label: const Text('login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// 'email': 'eve.holt@reqres.in',
// 'password': 'cityslicka'
