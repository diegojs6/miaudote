part of 'auth_bloc.dart';

abstract class AuthEvent {}

class Started extends AuthEvent {}

class LoggedIn extends AuthEvent {}

class Registered extends AuthEvent {}

class LoggedOut extends AuthEvent {}
