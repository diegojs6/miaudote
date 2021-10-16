part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const AuthEvent._();
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.loggedIn() = _LoggedIn;
  const factory AuthEvent.registered() = _Registered;
  const factory AuthEvent.loggedOut() = _LoggedOut;
}
