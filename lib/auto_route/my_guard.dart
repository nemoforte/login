import 'package:auto_route/auto_route.dart';

class MyGuard extends AutoRouteGuard {
  bool authenticated = true;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authenticated) {
      resolver.next(true);
    } else {
      resolver.next(false);
    }
  }
}
