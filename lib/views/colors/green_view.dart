import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/widgets/color_button.dart';

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
          ColorButton(
              onPressed: () {
                AutoRouter.of(context).replace(const BlueRoute());
              },
              color: Colors.blue),
          const SizedBox(
            width: 75,
          ),
          ColorButton(
              onPressed: () {
                AutoRouter.of(context).replace(const RedRoute());
              },
              color: Colors.red),
        ],
      )),
    );
  }
}
