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

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

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
      return _i4.MaterialPageX<void>(
        routeData: routeData,
        child: const _i3.LoggedView(),
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
class LoggedRoute extends _i4.PageRouteInfo<void> {
  const LoggedRoute()
      : super(
          LoggedRoute.name,
          path: 'logged-view',
        );

  static const String name = 'LoggedRoute';
}
