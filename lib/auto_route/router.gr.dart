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

import '../models/user_model.dart' as _i7;
import '../views/logged_view.dart' as _i3;
import '../views/login_view.dart' as _i2;
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
      final args = routeData.argsAs<LoggedRouteArgs>();
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: _i3.LoggedView(
          user: args.user,
          textName: args.textName,
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
              path: 'logged',
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
    required _i7.UserModel? user,
    String textName = '',
    _i5.Key? key,
  }) : super(
          LoggedRoute.name,
          path: 'logged',
          args: LoggedRouteArgs(
            user: user,
            textName: textName,
            key: key,
          ),
        );

  static const String name = 'LoggedRoute';
}

class LoggedRouteArgs {
  const LoggedRouteArgs({
    required this.user,
    this.textName = '',
    this.key,
  });

  final _i7.UserModel? user;

  final String textName;

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoggedRouteArgs{user: $user, textName: $textName, key: $key}';
  }
}
