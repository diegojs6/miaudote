import 'package:equatable/equatable.dart';

import 'characteristics.dart';

class Animals extends Equatable {
  final String? objectId;
  final DateTime? createAt;
  final DateTime? updatedAt;
  final String? size;
  final String? gender;
  final num? heigth;
  final String? ong;
  final String? name;
  final bool? adopted;
  final Characteristics? characteristics;
  final bool? verify;
  final String? description;
  final String? age;
  final String? animalType;

  Animals({
    this.objectId,
    this.createAt,
    this.updatedAt,
    this.size,
    this.gender,
    this.heigth,
    this.ong,
    this.name,
    this.adopted,
    this.characteristics,
    this.verify,
    this.description,
    this.age,
    this.animalType,
  });

  @override
  List<Object?> get props {
    return [
      objectId,
      createAt,
      updatedAt,
      size,
      gender,
      heigth,
      ong,
      name,
      adopted,
      characteristics,
      verify,
      description,
      age,
      animalType,
    ];
  }
}
