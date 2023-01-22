import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/main.dart';
import 'package:login/models/user_model.dart';

class LoggedView extends StatelessWidget {

  final UserModel? user;

  final String textName;

  const LoggedView({required this.user, this.textName = '', Key? key}) : super(key: key);

  Future<dynamic> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Your Name'),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 1.0,
                child: const Text('Submit'),
                onPressed: () {
                  AutoRouter.of(context).pop(customController.text.toString());
                  AutoRouter.of(context).replace(LoggedRoute(user: user, textName: customController.text.toString()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome $textName'),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {
                createAlertDialog(context).then<dynamic>((dynamic onValue) {
                  SnackBar mySnackBar = SnackBar(content: Text('Elo $onValue'));
                  ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                });
              },
              icon: const Icon(
                Icons.rocket_launch,
                size: 18,
              ),
              label: const Text("Let's go!"),
            ),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {
                AutoRouter.of(context).replace(const LoginRoute());
                MyApp.of(context).authService.authenticated = false;
              },
              icon: const Icon(
                Icons.exit_to_app,
                size: 18,
              ),
              label: const Text('Logout'),
            ),
          ],
        ),
      ),
    ));
  }
}
