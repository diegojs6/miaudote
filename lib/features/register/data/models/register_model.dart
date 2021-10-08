import 'package:equatable/equatable.dart';

import '../../domain/entities/register.dart';

class RegisterModel extends Equatable {
  final String username;
  final String? email;
  final String? address;
  final String? fullName;
  final String? lat;
  final String? long;
  final num? contact;
  final String? birthDate;
  final String password;

  RegisterModel({
    required this.username,
    this.email,
    this.address,
    this.fullName,
    this.lat = "",
    this.long = "",
    this.contact,
    this.birthDate,
    required this.password,
  });

  @override
  List<Object?> get props {
    return [
      username,
      email,
      address,
      fullName,
      lat,
      long,
      contact,
      birthDate,
      password,
    ];
  }

  factory RegisterModel.fromjson(Map<String, dynamic> json) => RegisterModel(
        username: json['username'],
        email: json['email'],
        address: json['address'],
        fullName: json['fullName'],
        lat: json['lat'],
        long: json['long'],
        contact: json['contact'],
        birthDate: json['birthDate'],
        password: json['password'],
      );

  static Map<String, dynamic> tojson(RegisterModel registerModel) => {
        'username': registerModel.username,
        'email': registerModel.email,
        'address': registerModel.address,
        'fullName': registerModel.fullName,
        'lat': registerModel.lat,
        'long': registerModel.long,
        'contact': registerModel.contact,
        'birthDate': registerModel.birthDate,
        'password': registerModel.password,
      };

  factory RegisterModel.fromEntity(Register entity) => RegisterModel(
        username: entity.username,
        email: entity.email,
        address: entity.address,
        fullName: entity.fullName,
        lat: entity.lat,
        long: entity.long,
        contact: entity.contact,
        birthDate: entity.birthDate,
        password: entity.password,
      );

  Register toEntity() => Register(
        username: username,
        email: email,
        address: address,
        fullName: fullName,
        lat: lat,
        long: long,
        contact: contact,
        birthDate: birthDate,
        password: password,
      );
}
