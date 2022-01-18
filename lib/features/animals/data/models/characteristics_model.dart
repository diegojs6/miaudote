import 'package:equatable/equatable.dart';

import '../../domain/entities/characteristics.dart';

class CharacteristicsModel extends Equatable {
  final bool? sociable;
  final bool? conduct;
  final num? bark;
  final bool? vaccinated;
  final bool? castrated;
  final String? size;

  CharacteristicsModel({
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

  factory CharacteristicsModel.fromJson(Map<String, dynamic> json) => CharacteristicsModel(
        sociable: json['sociable'],
        conduct: json['conduct'],
        bark: json['bark'],
        vaccinated: json['vaccinated'],
        castrated: json['castrated'],
        size: json['size'],
      );

  static Map<String, dynamic> toJson(CharacteristicsModel? characteristics) => {
        'sociable': characteristics?.sociable,
        'conduct': characteristics?.conduct,
        'bark': characteristics?.bark,
        'vaccinated': characteristics?.vaccinated,
        'castrated': characteristics?.castrated,
        'size': characteristics?.size,
      };

  factory CharacteristicsModel.fromEntity(Characteristics? entity) => CharacteristicsModel(
        sociable: entity?.sociable,
        conduct: entity?.conduct,
        bark: entity?.bark,
        vaccinated: entity?.vaccinated,
        castrated: entity?.castrated,
        size: entity?.size,
      );

  Characteristics toEntity() => Characteristics(
        sociable: sociable,
        conduct: conduct,
        bark: bark,
        vaccinated: vaccinated,
        castrated: castrated,
        size: size,
      );
}
