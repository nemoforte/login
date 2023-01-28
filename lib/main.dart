import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/auto_route/auth_guard.dart';
import 'package:login/auto_route/router.gr.dart';
import 'package:login/locator.dart';
import 'package:login/util/auth_controller.dart';
import 'package:login/util/blocc.dart';

void main() {
  setup();
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  LoginApp({super.key});

  final AppRouter _appRouter = AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<AuthController>(
          create: (_) => locator.get<AuthController>(),
        ),
        BlocProvider<Blocc>(
          create: (_) => Blocc(),
        ),
      ],
      child: MaterialApp.router(routeInformationParser: _appRouter.defaultRouteParser(), routerDelegate: _appRouter.delegate()),
    );
  }
}
