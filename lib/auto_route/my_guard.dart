import 'package:auto_route/auto_route.dart';
import 'package:login/util/auth_controller.dart';

class MyGuard extends AutoRedirectGuard {
  final AuthController authController;

  MyGuard(this.authController) {
    authController.addListener(() {
      if (!authController.authenticated) {
        reevaluate();
      }
    });
  }

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authController.authenticated) {
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
