// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) {
  return SocialMediaModel(
    facebook: json['facebook'] as String?,
    instagram: json['instagram'] as String?,
    site: json['site'] as String?,
  );
}

Map<String, dynamic> _$SocialMediaModelToJson(SocialMediaModel instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'site': instance.site,
    };
