import 'package:equatable/equatable.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';

class LoginModel extends Equatable {
  final String username;
  final String password;

  const LoginModel({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        username: 'username',
        password: 'password',
      };

  factory LoginModel.fromEntity(Login entity) => LoginModel(
        username: entity.username,
        password: entity.password,
      );

  Login toEntity() => Login(
        username: username,
        password: password,
      );
}
