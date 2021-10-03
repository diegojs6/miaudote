import 'package:equatable/equatable.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';

class LoginModel extends Equatable {
  final String? username;
  final String? email;
  final String? sessionToken;

  const LoginModel({this.username, this.email, this.sessionToken});

  @override
  List<Object?> get props => [username, email, sessionToken];

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'],
        email: json['email'],
        sessionToken: json['sessionToken'],
      );

  Map<String, dynamic> toJson() => {username!: 'username', email!: 'email', sessionToken!: 'sessionToken'};

  factory LoginModel.fromEntity(Login entity) => LoginModel(
        username: entity.username,
        email: entity.email,
        sessionToken: entity.sessionToken,
      );

  Login toEntity() => Login(
        username: username,
        email: email,
        sessionToken: sessionToken,
      );
}
