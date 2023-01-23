import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

class GreenView extends StatelessWidget {
  final String? word;

  const GreenView({@QueryParam('word') this.word, Key? key}) : super(key: key);

  Future<dynamic> createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();

    return showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Your Query'),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              MaterialButton(
                elevation: 1.0,
                child: const Text('Submit'),
                onPressed: () {
                  AutoRouter.of(context).pop(customController.text.toString());
                  AutoRouter.of(context).replace(
                      GreenRoute(word: customController.text.toString()));
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(word == null ? '' : word.toString()),
            const SizedBox(
              height: 30,
            ),
            Row(
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
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {
                createAlertDialog(context);
              },
              icon: const Icon(
                Icons.rocket_launch,
                size: 18,
                color: Colors.black,
              ),
              label: const Text(
                'Type query',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
