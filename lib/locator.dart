import 'package:get_it/get_it.dart';
import 'package:login/util/auth_controller.dart';

final GetIt locator = GetIt.instance;

void setup() {
  locator.registerLazySingleton<AuthController>(AuthController.new);
}
