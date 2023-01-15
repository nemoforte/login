import 'package:flutter/material.dart';

import 'package:login/main.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const MyHomePage()));
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
