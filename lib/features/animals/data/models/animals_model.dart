import 'package:equatable/equatable.dart';

import '../../domain/entities/animals.dart';
import 'characteristics_model.dart';

class AnimalsModel extends Equatable {
  final String? objectId;
  final DateTime? createAt;
  final DateTime? updatedAt;
  final String? size;
  final String? gender;
  final num? heigth;
  final String? ong;
  final String? name;
  final bool? adopted;
  final List<CharacteristicsModel>? characteristicsModel;
  final bool? verify;
  final String? description;
  final String? age;
  final String? animalType;
  final List<dynamic>? imageList;
  final num? lat;
  final num? long;

  AnimalsModel({
    this.objectId,
    this.createAt,
    this.updatedAt,
    this.size,
    this.gender,
    this.heigth,
    this.ong,
    this.name,
    this.adopted,
    this.characteristicsModel,
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
      characteristicsModel,
      verify,
      description,
      age,
      animalType,
      imageList,
      lat,
      long,
    ];
  }

  factory AnimalsModel.fromJson(Map<String, dynamic> json) => AnimalsModel(
        objectId: json['objectId'],
        createAt: json['createAt'],
        updatedAt: json['updateAt'],
        size: json['size'],
        gender: json['gender'],
        heigth: json['heigth'],
        ong: json['ong'],
        name: json['name'],
        adopted: json['adopted'],
        characteristicsModel: (json['characteristics'] as List).map((e) => CharacteristicsModel.fromJson(e)).toList(),
        verify: json['verify'],
        description: json['description'],
        age: json['age'],
        animalType: json['animalType'],
        imageList: json['imageList'],
        lat: json['lat'],
        long: json['long'],
      );

  static Map<String, dynamic> toJson(AnimalsModel animalsModel) => {
        'objectId': animalsModel.objectId,
        'createAt': animalsModel.createAt,
        'updatedAt': animalsModel.updatedAt,
        'size': animalsModel.size,
        'gender': animalsModel.gender,
        'heigth': animalsModel.heigth,
        'ong': animalsModel.ong,
        'name': animalsModel.name,
        'adopted': animalsModel.adopted,
        'characteristics': animalsModel.characteristicsModel?.map((e) => CharacteristicsModel.toJson(e)).toList(),
        'verify': animalsModel.verify,
        'description': animalsModel.description,
        'age': animalsModel.age,
        'animalType': animalsModel.animalType,
        'imageList': animalsModel.imageList,
        'lat': animalsModel.lat,
        'long': animalsModel.long,
      };

  factory AnimalsModel.fromEntity(Animals entity) => AnimalsModel(
        objectId: entity.objectId,
        createAt: entity.createAt,
        updatedAt: entity.updatedAt,
        size: entity.size,
        gender: entity.gender,
        heigth: entity.heigth,
        ong: entity.ong,
        name: entity.name,
        adopted: entity.adopted,
        characteristicsModel: entity.characteristics?.map((e) => CharacteristicsModel.fromEntity(e)).toList(),
        verify: entity.verify,
        description: entity.description,
        age: entity.age,
        animalType: entity.animalType,
        imageList: entity.imageList,
        lat: entity.lat,
        long: entity.long,
      );

  Animals toEntity() => Animals(
        objectId: objectId,
        createAt: createAt,
        updatedAt: updatedAt,
        size: size,
        gender: gender,
        heigth: heigth,
        ong: ong,
        name: name,
        adopted: adopted,
        characteristics: characteristicsModel?.map((e) => e.toEntity()).toList(),
        verify: verify,
        description: description,
        age: age,
        animalType: animalType,
        imageList: imageList,
        lat: lat,
        long: long,
      );
}
