import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/customer.dart';

part 'customer_model.g.dart';

@JsonSerializable()
class CustomerModel extends Equatable {
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

  @override
  List<Object?> get props {
    return [username, email, emailVerified, address, fullName, lat, long, contact, birthDate, objectId];
  }

  CustomerModel({
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

  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerModelToJson(this);

  factory CustomerModel.fromEntity(Customer entity) => CustomerModel(
        username: entity.username,
        email: entity.email,
        emailVerified: entity.emailVerified,
        address: entity.address,
        fullName: entity.fullName,
        lat: entity.lat,
        long: entity.long,
        contact: entity.contact,
        birthDate: entity.birthDate,
      );

  Customer toEntity() => Customer(
        username: username,
        email: email,
        emailVerified: emailVerified,
        address: address,
        fullName: fullName,
        lat: lat,
        long: long,
        contact: contact,
        birthDate: birthDate,
      );
}
