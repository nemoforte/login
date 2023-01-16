import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

class LoggedView extends StatelessWidget {
  const LoggedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome User'),
            const SizedBox(
              height: 50,
            ),
            OutlinedButton.icon(
              onPressed: () {
                AutoRouter.of(context).replace(const LoginRoute());
              },
              icon: const Icon(
                Icons.exit_to_app,
                size: 18,
              ),
              label: const Text('Logout'),
            )
          ],
        ),
      ),
    ));
  }
}
