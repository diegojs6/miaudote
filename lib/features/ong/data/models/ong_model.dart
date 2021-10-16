import 'package:equatable/equatable.dart';

import 'package:miaudote/features/ong/data/models/social_media_model.dart';

class OngModel extends Equatable {
  final String? name;
  final String? address;
  final String? contact;
  final String? lat;
  final String? long;
  final String? about;
  final SocialMediaModel socialMedia;

  OngModel(this.name, this.address, this.contact, this.lat, this.long, this.about, this.socialMedia);

  @override
  List<Object?> get props {
    return [name, address, contact, lat, long, about, socialMedia];
  }
}
