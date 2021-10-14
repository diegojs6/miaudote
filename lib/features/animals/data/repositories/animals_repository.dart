import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/animals.dart';
import '../../domain/repositories/i_animals_repository.dart';
import '../datasources/animals_remote_data_source.dart';
import '../models/characteristics_model.dart';

class AnimalsRepository implements IAnimalsRepository {
  final IAnimalsRemoteDataSource remoteDataSource;

  AnimalsRepository(this.remoteDataSource);

  @override
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
  }) async {
    try {
      final response = await remoteDataSource.getAnimals(
        objectId: objectId,
        createAt: createAt,
        updateAt: updatedAt,
        size: size,
        gender: gender,
        heigth: heigth,
        characteristicsModel: characteristicsModel,
        verify: verify,
        description: description,
        age: age,
        animalType: animalType,
      );
      final entity = response.toEntity();
      return Right(entity);
    } on ServerException {
      return Left(NetworkFailure());
    } on NetworkException {
      return Left(ServerFailure());
    }
  }
}
