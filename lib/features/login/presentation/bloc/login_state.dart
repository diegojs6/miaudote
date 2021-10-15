part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.completed({Customer? customer}) = _Completed;
  const factory LoginState.loginError({String? message}) = _LoginError;
}
