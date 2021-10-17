import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ong.dart';

abstract class IOngRepository {
  Future<Either<Failure, List<Ong>>> getOngs();
}
