import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String? username;
  final String? email;
  final String? sessionToken;

  Login({this.username, this.email, this.sessionToken});

  @override
  List<Object?> get props => [username, email, sessionToken];
}
