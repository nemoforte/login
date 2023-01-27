import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/auto_route/auth_guard.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/locator.dart';
import 'package:login/util/auth_controller.dart';

void main() {
  setup();
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  LoginApp({super.key});

  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthController>(
      create: (_) => locator.get<AuthController>(),
      child: MaterialApp.router(routeInformationParser: _appRouter.defaultRouteParser(), routerDelegate: _appRouter.delegate()),
    );
  }
}
