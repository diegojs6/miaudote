import 'package:equatable/equatable.dart';

class Characteristics extends Equatable {
  final bool? sociable;
  final bool? conduct;
  final num? bark;
  final bool? vaccineted;
  final bool? castrated;
  final String? size;

  Characteristics({
    this.sociable,
    this.conduct,
    this.bark,
    this.vaccineted,
    this.castrated,
    this.size,
  });

  @override
  List<Object?> get props {
    return [
      sociable,
      conduct,
      bark,
      vaccineted,
      castrated,
      size,
    ];
  }
}
