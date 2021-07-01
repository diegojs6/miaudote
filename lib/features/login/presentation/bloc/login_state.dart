import 'package:equatable/equatable.dart';

import '../../domain/entities/login.dart';

enum LoginStatus {
  loading, ready, error
}

class LoginState extends Equatable {
  final LoginStatus status;
  final Login? getLogin;
  final String? messageError;

  LoginState._(this.status, this.getLogin, this.messageError);

    @override
  List<Object?> get props => [status, getLogin, messageError];

  LoginState.initial() : this._(LoginStatus.loading, null, null);

  LoginState loading() => LoginState._(LoginStatus.loading, getLogin, messageError);

  LoginState ready(Login login) => LoginState._(LoginStatus.loading, login, messageError);

  LoginState error(String? msgError) => LoginState._(LoginStatus.loading, getLogin, msgError);
}
