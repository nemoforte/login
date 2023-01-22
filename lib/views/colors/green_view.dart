import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

class GreenView extends StatelessWidget {
  const GreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
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
          const SizedBox(
            width: 75,
          ),
          OutlinedButton(
            onPressed: () {
              AutoRouter.of(context).replace(const RedRoute());
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
