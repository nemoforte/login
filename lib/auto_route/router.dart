import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:login/auto_route/app_wrapper.dart';
import 'package:login/auto_route/my_guard.dart';
import 'package:login/views/colors/blue_view.dart';
import 'package:login/views/colors/green_view.dart';
import 'package:login/views/colors/red_view.dart';
import 'package:login/views/logged_view.dart';
import 'package:login/views/login_view.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute<void>(
      page: AppWrapper,
      initial: true,
      children: <AutoRoute>[
        AutoRoute<void>(path: '', page: LoginView, initial: true),
        AutoRoute<void>(
          path: 'logged',
          page: LoggedView,
          guards: <Type>[MyGuard],
          children: <AutoRoute>[
            AutoRoute<void>(
              path: '',
              page: EmptyRouterPage,
              initial: true,
              guards: <Type>[MyGuard],
              children: <AutoRoute>[
                AutoRoute<void>(path: 'blue', page: BlueView, initial: true),
                AutoRoute<void>(path: 'green', page: GreenView),
                AutoRoute<void>(path: 'red', page: RedView),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}

// flutter pub run build_runner build --delete-conflicting-outputs
