import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/util/auth_controller.dart';
import 'package:login/widgets/color_button.dart';

class RedView extends StatelessWidget {
  const RedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthController>.value(
      value: BlocProvider.of<AuthController>(context),
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: SizedBox(
                  width: 5,
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      AutoRouter.of(context).replace(const BlueRoute());
                      context.read<AuthController>().authFalse();
                    },
                    child: Container(
                      height: 50,
                      width: 5,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue,
                      ),
                      child: const Text('Logout'),
                    ),
                  ),
                ),
              ),
              const Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: SizedBox(
                  width: 5,
                ),
              ),
              Flexible(
                  fit: FlexFit.tight,
                  flex: 3,
                  child: ColorButton(onPressed: () => AutoRouter.of(context).replace(GreenRoute()), color: Colors.green)),
              const Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: SizedBox(
                  width: 5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
