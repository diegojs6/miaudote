part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.load({required String username, required String password}) = Load;
  const factory LoginEvent.loginComplete({required Customer user}) = _LoginComplete;
  const factory LoginEvent.logout() = _Logout;
  const factory LoginEvent.error({required String message}) = _Error;
  const factory LoginEvent.register({
    required String username,
    required String? email,
    String? address,
    String? fullName,
    String? lat,
    String? long,
    num? contact,
    String? birthDate,
    required String password,
  }) = _Register;
}
