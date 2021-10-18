import 'package:equatable/equatable.dart';

class Characteristics extends Equatable {
  final bool? sociable;
  final bool? conduct;
  final num? bark;
  final bool? kids;
  final bool? vaccineted;
  final bool? castrated;
  final String? size;
  final String? lack;

  Characteristics({
    this.sociable,
    this.conduct,
    this.bark,
    this.kids,
    this.vaccineted,
    this.castrated,
    this.size,
    this.lack,
  });

  @override
  List<Object?> get props {
    return [
      sociable,
      conduct,
      bark,
      kids,
      vaccineted,
      castrated,
      size,
      lack,
    ];
  }
}
