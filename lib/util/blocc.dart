import 'package:flutter_bloc/flutter_bloc.dart';

class Blocc extends Cubit<String> {

  Blocc() : super('Welcome');

  void elo() {
    emit('elo');
  }

  void yo() {
    emit('yo');
  }

  void welcome() {
    emit('welcome');
  }
}
