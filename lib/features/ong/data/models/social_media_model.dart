import 'package:equatable/equatable.dart';

class SocialMediaModel extends Equatable {
  final String? facebook;
  final String? instagram;
  final String? site;

  SocialMediaModel({this.facebook, this.instagram, this.site});

  @override
  List<Object?> get props => [facebook, instagram, site];
}
