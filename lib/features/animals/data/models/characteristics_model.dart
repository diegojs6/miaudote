import 'package:equatable/equatable.dart';

import '../../domain/entities/characteristics.dart';

class CharacteristicsModel extends Equatable {
  final bool? sociable;
  final bool? conduct;
  final num? bark;
  final bool? kids;
  final bool? vaccineted;
  final bool? castrated;
  final String? size;
  final String? lack;

  CharacteristicsModel({
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

  factory CharacteristicsModel.fromJson(Map<String, dynamic> json) => CharacteristicsModel(
        sociable: json['sociable'],
        conduct: json['conduct'],
        bark: json['bark'],
        kids: json['kids'],
        vaccineted: json['vaccineted'],
        castrated: json['castrated'],
        size: json['size'],
        lack: json['lack'],
      );

  static Map<String, dynamic> toJson(CharacteristicsModel? characteristics) => {
        'sociable': characteristics?.sociable,
        'conduct': characteristics?.conduct,
        'bark': characteristics?.bark,
        'kids': characteristics?.kids,
        'vaccineted': characteristics?.vaccineted,
        'castrated': characteristics?.castrated,
        'size': characteristics?.size,
        'lack': characteristics?.lack,
      };

  factory CharacteristicsModel.fromEntity(Characteristics? entity) => CharacteristicsModel(
        sociable: entity?.sociable,
        conduct: entity?.conduct,
        bark: entity?.bark,
        kids: entity?.kids,
        vaccineted: entity?.vaccineted,
        castrated: entity?.castrated,
        size: entity?.size,
        lack: entity?.lack,
      );

  Characteristics toEntity() => Characteristics(
        sociable: sociable,
        conduct: conduct,
        bark: bark,
        kids: kids,
        vaccineted: vaccineted,
        castrated: castrated,
        size: size,
        lack: lack,
      );
}
