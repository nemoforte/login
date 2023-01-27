import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/widgets/color_button_row.dart';

class BlueView extends StatelessWidget {
  const BlueView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ColorButtonRow(
          color1: Colors.green,
          color2: Colors.red,
          route1: GreenRoute(),
          route2: const RedRoute(),
        ),
      ),
    );
  }
}
