import 'package:equatable/equatable.dart';

import 'social_media.dart';

class Ong extends Equatable {
  final String? name;
  final String? address;
  final String? contact;
  final String? lat;
  final String? long;
  final String? about;
  final SocialMedia? socialMedia;

  Ong({this.name, this.address, this.contact, this.lat, this.long, this.about, this.socialMedia});

  @override
  List<Object?> get props {
    return [name, address, contact, lat, long, about, socialMedia];
  }
}
