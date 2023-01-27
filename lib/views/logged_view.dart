import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/models/user_model.dart';
import 'package:login/util/auth_controller.dart';

class LoggedView extends StatefulWidget {
  final UserModel? user;

  const LoggedView({Key? key, this.user}) : super(key: key);

  @override
  State<LoggedView> createState() => _LoggedViewState();
}

class _LoggedViewState extends State<LoggedView> {
  String textName = '';

  Future<dynamic> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Your Name'),
          content: TextField(
            controller: customController,
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 1.0,
              child: const Text('Submit'),
              onPressed: () {
                AutoRouter.of(context).pop(customController.text.toString());
                setState(() {
                  textName = customController.text.toString();
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthController, bool>(
      builder: (BuildContext context, bool authenticated) => Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: AutoRouter(),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      Text('Welcome $textName'),
                      const SizedBox(
                        height: 50,
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          createAlertDialog(context).then<dynamic>(
                            (dynamic onValue) {
                              SnackBar mySnackBar = SnackBar(content: Text('Elo $onValue'));
                              ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
                            },
                          );
                        },
                        icon: const Icon(
                          Icons.rocket_launch,
                          size: 18,
                        ),
                        label: const Text('Type your name'),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          AutoRouter.of(context).replace(const LoginRoute());
                          context.read<AuthController>().authFalse();
                        },
                        icon: const Icon(
                          Icons.exit_to_app,
                          size: 18,
                        ),
                        label: const Text('Logout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
