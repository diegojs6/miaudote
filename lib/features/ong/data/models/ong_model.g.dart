// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ong_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OngModel _$OngModelFromJson(Map<String, dynamic> json) {
  return OngModel(
    name: json['name'] as String?,
    address: json['address'] as String?,
    contact: json['contact'] as String?,
    lat: json['lat'] as String?,
    long: json['long'] as String?,
    about: json['about'] as String?,
    socialMedia: json['socialMedia'] == null
        ? null
        : SocialMediaModel.fromJson(
            json['socialMedia'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OngModelToJson(OngModel instance) => <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'contact': instance.contact,
      'lat': instance.lat,
      'long': instance.long,
      'about': instance.about,
      'socialMedia': instance.socialMedia,
    };
