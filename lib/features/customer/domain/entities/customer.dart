import 'package:equatable/equatable.dart';

class Customer extends Equatable {
  final String? username;
  final String? email;
  final bool? emailVerified;
  final String? address;
  final String? fullName;
  final num? lat;
  final num? long;
  final num? contact;
  final String? birthDate;
  final String? objectId;

  Customer({
    this.username,
    this.email,
    this.emailVerified,
    this.address,
    this.fullName,
    this.lat,
    this.long,
    this.contact,
    this.birthDate,
    this.objectId,
  });

  @override
  List<Object?> get props {
    return [username, email, emailVerified, address, fullName, lat, long, contact, birthDate, objectId];
  }
}
