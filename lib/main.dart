import 'package:flutter/material.dart';
import 'package:login/auto_route/my_guard.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/util/auth_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final AuthController authController = AuthController();

  late final AppRouter _appRouter = AppRouter(myGuard: MyGuard(authController));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate());
  }
}
