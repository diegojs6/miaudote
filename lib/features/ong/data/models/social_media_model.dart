import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/social_media.dart';

part 'social_media_model.g.dart';

@JsonSerializable()
class SocialMediaModel extends Equatable {
  final String? facebook;
  final String? instagram;
  final String? site;

  SocialMediaModel({this.facebook, this.instagram, this.site});

  @override
  List<Object?> get props => [facebook, instagram, site];

  factory SocialMediaModel.fromJson(Map<String, dynamic> json) => _$SocialMediaModelFromJson(json);
  Map<String, dynamic> toJson() => _$SocialMediaModelToJson(this);

  factory SocialMediaModel.fromEntity(SocialMedia entity) => SocialMediaModel(
        facebook: entity.facebook,
        instagram: entity.instagram,
        site: entity.site,
      );

  SocialMedia toEntity() => SocialMedia(
        facebook: facebook,
        instagram: instagram,
        site: site,
      );
}
