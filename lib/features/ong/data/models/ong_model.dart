import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/ong.dart';
import 'social_media_model.dart';

part 'ong_model.g.dart';

@JsonSerializable()
class OngModel extends Equatable {
  final String? name;
  final String? address;
  final String? contact;
  final String? lat;
  final String? long;
  final String? about;
  final SocialMediaModel? socialMedia;
  final String? ongImage;
  final bool? isVerified;

  OngModel({
    this.name,
    this.address,
    this.contact,
    this.lat,
    this.long,
    this.about,
    this.socialMedia,
    this.ongImage,
    this.isVerified,
  });

  @override
  List<Object?> get props {
    return [name, address, contact, lat, long, about, socialMedia, ongImage, isVerified];
  }

  factory OngModel.fromJson(Map<String, dynamic> json) => _$OngModelFromJson(json);
  Map<String, dynamic> toJson() => _$OngModelToJson(this);

  factory OngModel.fromEntity(Ong entity) {
    final socialMedia = entity.socialMedia;
    return OngModel(
      name: entity.name,
      address: entity.address,
      contact: entity.contact,
      lat: entity.lat,
      long: entity.long,
      about: entity.about,
      socialMedia: socialMedia != null ? SocialMediaModel.fromEntity(socialMedia) : null,
      ongImage: entity.ongImage,
      isVerified: entity.isVerified,
    );
  }

  Ong toEntity() => Ong(
        name: name,
        address: address,
        contact: contact,
        lat: lat,
        long: long,
        about: about,
        socialMedia: socialMedia?.toEntity(),
        ongImage: ongImage,
        isVerified: isVerified,
      );
}
