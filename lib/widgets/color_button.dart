import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final void Function()? onPressed;

  final Color? color;

  const ColorButton({required this.onPressed, required this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: 5,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: color,
          ),
        ),
      ),
    );
  }
}
