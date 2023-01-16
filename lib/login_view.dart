import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder(), suffixIcon: Icon(Icons.email)),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder(), suffixIcon: Icon(Icons.password)),
                ),
                const SizedBox(
                  height: 45,
                ),
                OutlinedButton.icon(
                  onPressed: login,
                  icon: const Icon(Icons.login, size: 18),
                  label: const Text('login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> login() async {
    // Dio dio = Dio();
    if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
      Dio dio = Dio();
      Response<dynamic> response = await dio
          .post<dynamic>('https://reqres.in/api/login', data: <String, String>{'email': emailController.text, 'password': passController.text});
      if (response.statusCode == 200) {
        await AutoRouter.of(context).replace(LoggedRoute());
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invaild Credentials.'),
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Black Field Not Allowed'),
        ),
      );
    }
  }
}

// 'email': 'eve.holt@reqres.in',
// 'password': 'cityslicka'
