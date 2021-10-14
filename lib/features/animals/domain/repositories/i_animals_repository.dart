import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/characteristics_model.dart';
import '../entities/animals.dart';

abstract class IAnimalsRepository {
  Future<Either<Failure, Animals>> getAnimals({
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
  });
}
