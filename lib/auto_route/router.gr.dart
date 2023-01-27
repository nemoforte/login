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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../models/user_model.dart' as _i10;
import '../views/colors/blue_view.dart' as _i4;
import '../views/colors/green_view.dart' as _i5;
import '../views/colors/red_view.dart' as _i6;
import '../views/logged_view.dart' as _i3;
import '../views/login_view.dart' as _i2;
import 'app_wrapper.dart' as _i1;
import 'auth_guard.dart' as _i9;

class AppRouter extends _i7.RootStackRouter {
  AppRouter({
    _i8.GlobalKey<_i8.NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final _i9.AuthGuard authGuard;

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AppWrapper.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i1.AppWrapper(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    LoggedRoute.name: (routeData) {
      final args = routeData.argsAs<LoggedRouteArgs>(
          orElse: () => const LoggedRouteArgs());
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: _i3.LoggedView(
          key: args.key,
          user: args.user,
        ),
      );
    },
    BlueRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i4.BlueView(),
      );
    },
    GreenRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<GreenRouteArgs>(
          orElse: () => GreenRouteArgs(word: queryParams.optString('word')));
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: _i5.GreenView(
          word: args.word,
          key: args.key,
        ),
      );
    },
    RedRoute.name: (routeData) {
      return _i7.MaterialPageX<void>(
        routeData: routeData,
        child: const _i6.RedView(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          AppWrapper.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AppWrapper.name,
            ),
            _i7.RouteConfig(
              LoggedRoute.name,
              path: 'logged',
              parent: AppWrapper.name,
              guards: [authGuard],
              children: [
                _i7.RouteConfig(
                  '#redirect',
                  path: '',
                  parent: LoggedRoute.name,
                  redirectTo: 'blue',
                  fullMatch: true,
                ),
                _i7.RouteConfig(
                  BlueRoute.name,
                  path: 'blue',
                  parent: LoggedRoute.name,
                ),
                _i7.RouteConfig(
                  GreenRoute.name,
                  path: 'green',
                  parent: LoggedRoute.name,
                ),
                _i7.RouteConfig(
                  RedRoute.name,
                  path: 'red',
                  parent: LoggedRoute.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.AppWrapper]
class AppWrapper extends _i7.PageRouteInfo<void> {
  const AppWrapper({List<_i7.PageRouteInfo>? children})
      : super(
          AppWrapper.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AppWrapper';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.LoggedView]
class LoggedRoute extends _i7.PageRouteInfo<LoggedRouteArgs> {
  LoggedRoute({
    _i8.Key? key,
    _i10.UserModel? user,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoggedRoute.name,
          path: 'logged',
          args: LoggedRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'LoggedRoute';
}

class LoggedRouteArgs {
  const LoggedRouteArgs({
    this.key,
    this.user,
  });

  final _i8.Key? key;

  final _i10.UserModel? user;

  @override
  String toString() {
    return 'LoggedRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i4.BlueView]
class BlueRoute extends _i7.PageRouteInfo<void> {
  const BlueRoute()
      : super(
          BlueRoute.name,
          path: 'blue',
        );

  static const String name = 'BlueRoute';
}

/// generated route for
/// [_i5.GreenView]
class GreenRoute extends _i7.PageRouteInfo<GreenRouteArgs> {
  GreenRoute({
    String? word,
    _i8.Key? key,
  }) : super(
          GreenRoute.name,
          path: 'green',
          args: GreenRouteArgs(
            word: word,
            key: key,
          ),
          rawQueryParams: {'word': word},
        );

  static const String name = 'GreenRoute';
}

class GreenRouteArgs {
  const GreenRouteArgs({
    this.word,
    this.key,
  });

  final String? word;

  final _i8.Key? key;

  @override
  String toString() {
    return 'GreenRouteArgs{word: $word, key: $key}';
  }
}

/// generated route for
/// [_i6.RedView]
class RedRoute extends _i7.PageRouteInfo<void> {
  const RedRoute()
      : super(
          RedRoute.name,
          path: 'red',
        );

  static const String name = 'RedRoute';
}
