import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/widgets/color_button.dart';
import 'package:login/widgets/color_button_row.dart';

class RedView extends StatelessWidget {
  const RedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ColorButtonRow(
          color1: Colors.blue,
          color2: Colors.green,
          route1: const BlueRoute(),
          route2: GreenRoute(),
        ),
      ),
    );
  }
}
