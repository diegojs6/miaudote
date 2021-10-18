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
  final CharacteristicsModel? characteristicsModel;
  final bool? verify;
  final String? description;
  final String? age;
  final String? animalType;
  final List<dynamic>? imageList;

  AnimalsModel(
      {this.objectId,
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
      this.imageList});

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
        characteristicsModel: CharacteristicsModel.fromJson(json['characteristics']),
        verify: json['verify'],
        description: json['description'],
        age: json['age'],
        animalType: json['animalType'],
        imageList: json['imageList'],
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
        'characteristics': CharacteristicsModel.toJson(animalsModel.characteristicsModel),
        'verify': animalsModel.verify,
        'description': animalsModel.description,
        'age': animalsModel.age,
        'animalType': animalsModel.animalType,
        'imageList': animalsModel.imageList,
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
        characteristicsModel: CharacteristicsModel.fromEntity(entity.characteristics),
        verify: entity.verify,
        description: entity.description,
        age: entity.age,
        animalType: entity.animalType,
        imageList: entity.imageList,
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
        characteristics: characteristicsModel?.toEntity(),
        verify: verify,
        description: description,
        age: age,
        animalType: animalType,
        imageList: imageList,
      );
}
