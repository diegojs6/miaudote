import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

import '../entities/animals.dart';

abstract class IAnimalsRepository {
  Future<Either<Failure, List<Animals>>> getAnimals();
}
