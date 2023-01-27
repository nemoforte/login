import 'package:auto_route/auto_route.dart';
import 'package:login/locator.dart';
import 'package:login/util/auth_controller.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool authenticated = locator.get<AuthController>().currentState;
    if (authenticated) {
      resolver.next(true);
    } else {
      resolver.next(false);
    }
  }
}
