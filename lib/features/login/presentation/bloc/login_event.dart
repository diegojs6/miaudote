part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoginStarted extends LoginEvent {}

class LoginLoad extends LoginEvent {
  String username;
  String password;

  LoginLoad(
    this.username,
    this.password,
  );
}

class LoginComplete extends LoginEvent {
  late Customer user;
}

class LoginLogout extends LoginEvent {}

class LoginError extends LoginEvent {
  late String message;
}

class LoginRegister extends LoginEvent {
  late String username;
  late String? email;
  String? address;
  String? fullName;
  String? lat;
  String? long;
  num? contact;
  String? birthDate;
  late String password;

  LoginRegister({
    required this.username,
    this.email,
    this.address,
    this.fullName,
    this.lat,
    this.long,
    this.contact,
    this.birthDate,
    required this.password,
  });
}
