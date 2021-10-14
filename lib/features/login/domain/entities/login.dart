import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String? username;
  final String? email;
  final String? objectId;

  Login({this.username, this.email, this.objectId});

  @override
  List<Object?> get props => [username, email, objectId];
}
