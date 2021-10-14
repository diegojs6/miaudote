import 'package:equatable/equatable.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';

class LoginModel extends Equatable {
  final String? username;
  final String? email;
  final String? objectId;

  LoginModel({this.username, this.email, this.objectId});

  @override
  List<Object?> get props => [username, email, objectId];

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json['username'],
        email: json['email'],
        objectId: json['objectId'],
      );

  Map<String, dynamic> toJson(LoginModel loginModel) => {username!: 'username', email!: 'email', objectId!: 'objectId'};

  factory LoginModel.fromEntity(Login entity) => LoginModel(
        username: entity.username,
        email: entity.email,
        objectId: entity.objectId,
      );

  Login toEntity() => Login(
        username: username,
        email: email,
        objectId: objectId,
      );
}
