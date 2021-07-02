import 'package:equatable/equatable.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';

class LoginModel extends Equatable {
  final String username;

  LoginModel({required this.username});

  @override
  List<Object> get props => [username];

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'],
      );

  Map<String, dynamic> toJson(LoginModel loginModel) => {
        username: 'username',
      };

  factory LoginModel.fromEntity(Login entity) => LoginModel(
    username: entity.username,
  );

  Login toEntity() => Login(
    username: username,
  );
}
