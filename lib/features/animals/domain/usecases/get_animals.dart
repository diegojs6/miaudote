import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/characteristics_model.dart';
import '../entities/animals.dart';
import '../repositories/i_animals_repository.dart';

class GetAnimals {
  final IAnimalsRepository repository;

  GetAnimals(this.repository);

  Future<Either<Failure, Animals>> call({
    String? objectId,
    DateTime? createAt,
    DateTime? updatedAt,
    String? size,
    String? gender,
    num? heigth,
    String? ong,
    String? name,
    bool? adopted,
    CharacteristicsModel? characteristicsModel,
    bool? verify,
    String? description,
    String? age,
    String? animalType,
  }) async {
    return await repository.getAnimals(
      objectId: objectId,
      createAt: createAt,
      updatedAt: updatedAt,
      size: size,
      gender: gender,
      heigth: heigth,
      ong: ong,
      name: name,
      adopted: adopted,
      characteristicsModel: characteristicsModel,
      verify: verify,
      description: description,
      age: age,
      animalType: animalType,
    );
  }
}
