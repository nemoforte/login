import 'package:auto_route/auto_route.dart';

class MyGuard extends AutoRouteGuard {

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final dynamic id = resolver.route.;
    // if (id != null) {
      resolver.next(true);
    // } else {
    //   resolver.next(false);
    // }
  }
}
