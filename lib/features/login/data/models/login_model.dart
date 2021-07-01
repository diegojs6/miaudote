import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final String username;
  final String password;

  LoginModel({required this.username, required this.password});

  @override
  List<Object> get props => [username, password];

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'],
        password: json['password'],
      );

  Map<String, dynamic> toJson(LoginModel loginModel) => {
        username: 'username',
        password: 'password',
      };

  
}
