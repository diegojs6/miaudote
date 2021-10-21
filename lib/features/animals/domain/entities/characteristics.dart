import 'package:equatable/equatable.dart';

class Characteristics extends Equatable {
  final bool? sociable;
  final bool? conduct;
  final num? bark;
  final bool? vaccinated;
  final bool? castrated;
  final String? size;

  Characteristics({
    this.sociable,
    this.conduct,
    this.bark,
    this.vaccinated,
    this.castrated,
    this.size,
  });

  @override
  List<Object?> get props {
    return [
      sociable,
      conduct,
      bark,
      vaccinated,
      castrated,
      size,
    ];
  }
}
