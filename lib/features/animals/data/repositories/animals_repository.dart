import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/animals.dart';
import '../../domain/repositories/i_animals_repository.dart';
import '../datasources/animals_remote_data_source.dart';

class AnimalsRepository implements IAnimalsRepository {
  final IAnimalsRemoteDataSource remoteDataSource;

  AnimalsRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Animals>>> getAnimals() async {
    try {
      final response = await remoteDataSource.getAnimals();
      final animalsList = response.map((e) => e.toEntity()).toList();
      return Right(animalsList);
    } on ServerException {
      return Left(NetworkFailure());
    } on NetworkException {
      return Left(ServerFailure());
    }
  }
}
