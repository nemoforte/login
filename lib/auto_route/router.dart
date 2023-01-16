import 'package:auto_route/auto_route.dart';
import 'package:login/auto_route/app_wrapper.dart';
import 'package:login/logged_view.dart';
import 'package:login/login_view.dart';

@MaterialAutoRouter(replaceInRouteName: 'View,Route', routes: <AutoRoute>[
  AutoRoute<void>(
    page: AppWrapper,
    initial: true,
    children: <AutoRoute>[
      AutoRoute<void>(page: LoginView, initial: true),
      AutoRoute<void>(page: LoggedView),
    ],
  ),
])
class $AppRouter {}

// flutter pub run build_runner build --delete-conflicting-outputs