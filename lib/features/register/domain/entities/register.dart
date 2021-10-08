import 'package:equatable/equatable.dart';

class Register extends Equatable {
  final String username;
  final String? email;
  final String? address;
  final String? fullName;
  final String? lat;
  final String? long;
  final num? contact;
  final String? birthDate;
  final String password;

  Register({
    required this.username,
    this.email,
    this.address,
    this.fullName,
    this.lat,
    this.long,
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
}
