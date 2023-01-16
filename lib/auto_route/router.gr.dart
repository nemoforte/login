// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../logged_view.dart' as _i3;
import '../login_view.dart' as _i2;
import 'app_wrapper.dart' as _i1;
import 'my_guard.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter({
    _i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
    required this.myGuard,
  }) : super(navigatorKey);

  final _i6.MyGuard myGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AppWrapper.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    LoggedRoute.name: (routeData) {
      final args = routeData.argsAs<LoggedRouteArgs>(
          orElse: () => const LoggedRouteArgs());
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: _i3.LoggedView(
          user: args.user,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          AppWrapper.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AppWrapper.name,
            ),
            _i4.RouteConfig(
              LoggedRoute.name,
              path: 'logged-view',
              parent: AppWrapper.name,
              guards: [myGuard],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapper extends _i4.PageRouteInfo<void> {
  const AppWrapper({List<_i4.PageRouteInfo>? children})
      : super(
          AppWrapper.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapper';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.LoggedView]
class LoggedRoute extends _i4.PageRouteInfo<LoggedRouteArgs> {
  LoggedRoute({
    String user = '',
    _i5.Key? key,
  }) : super(
          LoggedRoute.name,
          path: 'logged-view',
          args: LoggedRouteArgs(
            user: user,
            key: key,
          ),
        );

  static const String name = 'LoggedRoute';
}

class LoggedRouteArgs {
  const LoggedRouteArgs({
    this.user = '',
    this.key,
  });

  final String user;

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoggedRouteArgs{user: $user, key: $key}';
  }
}
