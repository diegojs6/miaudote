import 'package:equatable/equatable.dart';

class SocialMedia extends Equatable {
  final String? facebook;
  final String? instagram;
  final String? site;

  SocialMedia({this.facebook, this.instagram, this.site});

  @override
  List<Object?> get props => [facebook, instagram, site];
}
