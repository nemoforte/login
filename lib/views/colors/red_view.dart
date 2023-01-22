import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

class RedView extends StatelessWidget {
  const RedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            onPressed: () {
              AutoRouter.of(context).replace(const GreenRoute());
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            width: 75,
          ),
          OutlinedButton(
            onPressed: () {
              AutoRouter.of(context).replace(const BlueRoute());
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
