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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i9;

import '../models/user_model.dart' as _i11;
import '../views/colors/blue_view.dart' as _i5;
import '../views/colors/green_view.dart' as _i6;
import '../views/colors/red_view.dart' as _i7;
import '../views/logged_view.dart' as _i3;
import '../views/login_view.dart' as _i2;
import 'app_wrapper.dart' as _i1;
import 'my_guard.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter({
    _i9.GlobalKey<_i9.NavigatorState>? navigatorKey,
    required this.myGuard,
  }) : super(navigatorKey);

  final _i10.MyGuard myGuard;

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AppWrapper.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    LoggedRoute.name: (routeData) {
      final args = routeData.argsAs<LoggedRouteArgs>();
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: _i3.LoggedView(
          user: args.user,
          textName: args.textName,
          key: args.key,
        ),
      );
    },
    EmptyRouterPage.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    BlueRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i5.BlueView(),
      );
    },
    GreenRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.GreenView(),
      );
    },
    RedRoute.name: (routeData) {
      return _i8.MaterialPageX<void>(
        routeData: routeData,
        child: const _i7.RedView(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          AppWrapper.name,
          path: '/',
          children: [
            _i8.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AppWrapper.name,
            ),
            _i8.RouteConfig(
              LoggedRoute.name,
              path: 'logged',
              parent: AppWrapper.name,
              guards: [myGuard],
              children: [
                _i8.RouteConfig(
                  EmptyRouterPage.name,
                  path: '',
                  parent: LoggedRoute.name,
                  guards: [myGuard],
                  children: [
                    _i8.RouteConfig(
                      '#redirect',
                      path: '',
                      parent: EmptyRouterPage.name,
                      redirectTo: 'blue',
                      fullMatch: true,
                    ),
                    _i8.RouteConfig(
                      BlueRoute.name,
                      path: 'blue',
                      parent: EmptyRouterPage.name,
                    ),
                    _i8.RouteConfig(
                      GreenRoute.name,
                      path: 'green',
                      parent: EmptyRouterPage.name,
                    ),
                    _i8.RouteConfig(
                      RedRoute.name,
                      path: 'red',
                      parent: EmptyRouterPage.name,
                    ),
                  ],
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapper extends _i8.PageRouteInfo<void> {
  const AppWrapper({List<_i8.PageRouteInfo>? children})
      : super(
          AppWrapper.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapper';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.LoggedView]
class LoggedRoute extends _i8.PageRouteInfo<LoggedRouteArgs> {
  LoggedRoute({
    required _i11.UserModel? user,
    String textName = '',
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoggedRoute.name,
          path: 'logged',
          args: LoggedRouteArgs(
            user: user,
            textName: textName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LoggedRoute';
}

class LoggedRouteArgs {
  const LoggedRouteArgs({
    required this.user,
    this.textName = '',
    this.key,
  });

  final _i11.UserModel? user;

  final String textName;

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoggedRouteArgs{user: $user, textName: $textName, key: $key}';
  }
}

/// generated route for
/// [_i4.EmptyRouterPage]
class EmptyRouterPage extends _i8.PageRouteInfo<void> {
  const EmptyRouterPage({List<_i8.PageRouteInfo>? children})
      : super(
          EmptyRouterPage.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'EmptyRouterPage';
}

/// generated route for
/// [_i5.BlueView]
class BlueRoute extends _i8.PageRouteInfo<void> {
  const BlueRoute()
      : super(
          BlueRoute.name,
          path: 'blue',
        );

  static const String name = 'BlueRoute';
}

/// generated route for
/// [_i6.GreenView]
class GreenRoute extends _i8.PageRouteInfo<void> {
  const GreenRoute()
      : super(
          GreenRoute.name,
          path: 'green',
        );

  static const String name = 'GreenRoute';
}

/// generated route for
/// [_i7.RedView]
class RedRoute extends _i8.PageRouteInfo<void> {
  const RedRoute()
      : super(
          RedRoute.name,
          path: 'red',
        );

  static const String name = 'RedRoute';
}
