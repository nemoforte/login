import 'package:flutter/material.dart';
import 'package:login/auto_route/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}