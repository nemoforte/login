import 'package:auto_route/auto_route.dart';
import 'package:login/util/auth_service.dart';

class MyGuard extends AutoRedirectGuard {
  final AuthService authService;

  MyGuard(this.authService) {
    authService.addListener(() {
      if (!authService.authenticated) {
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authService.authenticated) {
      return resolver.next(true);
    } else {
      return resolver.next(false);
    }
  }

  @override
  Future<bool> canNavigate(Object route) {
    // TODO(m): implement canNavigate
    throw UnimplementedError();
  }
}
