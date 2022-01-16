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
  final List<Characteristics>? characteristics;
  final bool? verify;
  final String? description;
  final String? age;
  final String? animalType;
  final List<dynamic>? imageList;
  final num? lat;
  final num? long;

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
    this.imageList,
    this.lat,
    this.long,
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
      imageList,
      lat,
      long,
    ];
  }
}
