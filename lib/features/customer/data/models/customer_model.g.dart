// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) {
  return CustomerModel(
    username: json['username'] as String?,
    email: json['email'] as String?,
    emailVerified: json['emailVerified'] as bool?,
    address: json['address'] as String?,
    fullName: json['fullName'] as String?,
    lat: json['lat'] as num?,
    long: json['long'] as num?,
    contact: json['contact'] as num?,
    birthDate: json['birthDate'] as String?,
    objectId: json['objectId'] as String?,
    sessionToken: json['sessionToken'] as String?,
  );
}

Map<String, dynamic> _$CustomerModelToJson(CustomerModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'address': instance.address,
      'fullName': instance.fullName,
      'lat': instance.lat,
      'long': instance.long,
      'contact': instance.contact,
      'birthDate': instance.birthDate,
      'objectId': instance.objectId,
      'sessionToken': instance.sessionToken,
    };
