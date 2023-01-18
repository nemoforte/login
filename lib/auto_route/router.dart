import 'package:auto_route/auto_route.dart';
import 'package:login/auto_route/app_wrapper.dart';
import 'package:login/auto_route/my_guard.dart';
import 'package:login/logged_view.dart';
import 'package:login/login_view.dart';

@MaterialAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute<void>(
    page: AppWrapper,
    initial: true,
    children: <AutoRoute>[
      AutoRoute<void>(path: '', page: LoginView, initial: true),
      AutoRoute<void>(path: 'logged', page: LoggedView, guards: <Type>[MyGuard]),
    ],
  ),
])
class $AppRouter {}

// flutter pub run build_runner build --delete-conflicting-outputs