import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/widgets/color_button.dart';

class ColorButtonRow extends StatelessWidget {
  final PageRouteInfo<dynamic> route1;
  final PageRouteInfo<dynamic> route2;
  final Color color1;
  final Color color2;

  const ColorButtonRow({required this.color1, required this.color2, required this.route1, required this.route2, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: SizedBox(
            width: 5,
          ),
        ),
        Flexible(fit: FlexFit.tight, flex: 3, child: ColorButton(onPressed: () => AutoRouter.of(context).replace(route1), color: color1)),
        const Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: SizedBox(
            width: 5,
          ),
        ),
        Flexible(fit: FlexFit.tight, flex: 3, child: ColorButton(onPressed: () => AutoRouter.of(context).replace(route2), color: color2)),
        const Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: SizedBox(
            width: 5,
          ),
        ),
      ],
    );
  }
}
