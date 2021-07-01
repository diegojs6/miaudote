import 'package:equatable/equatable.dart';
import 'package:miaudote/features/register/domain/entities/register.dart';

class RegisterModel extends Equatable{

final String username;
final String email;
final String password;

  RegisterModel({required this.username, required this.email, required this.password});

  @override
  List<Object> get props => [username, email, password];

  factory RegisterModel.fromjson(Map<String, dynamic> json) =>  RegisterModel(
    username: json['username'], 
    email: json['email'],
    password: json['password'],
  );

  static Map<String, dynamic> tojson(RegisterModel registerModel) => {
    'username': registerModel.username,
    'email': registerModel.email,
    'password': registerModel.password,
  };

  factory RegisterModel.fromEntity(Register entity) => RegisterModel(
    username: entity.username,
    email: entity.email,
    password: entity.password,
  );

  Register toEntity() => Register(
    username: username,
    email: email,
    password: password,
  );

}

 


