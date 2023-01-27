import 'package:flutter_bloc/flutter_bloc.dart';

class AuthController extends Cubit<bool> {
  bool currentState = false;

  AuthController() : super(false);

  void authTrue() {
    currentState = true;
    emit(true);
  }

  void authFalse() {
    currentState = false;
    emit(false);
  }
}
