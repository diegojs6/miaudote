import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

import '../entities/animals.dart';
import '../repositories/i_animals_repository.dart';

class GetAnimals {
  final IAnimalsRepository repository;

  GetAnimals(this.repository);

  Future<Either<Failure, List<Animals>>> call() async {
    return await repository.getAnimals();
  }
}
