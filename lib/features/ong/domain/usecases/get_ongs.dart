import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ong.dart';
import '../repositories/i_ong_repository.dart';

class GetOngs {
  final IOngRepository repository;

  GetOngs(this.repository);

  Future<Either<Failure, List<Ong>>> call() async {
    return await repository.getOngs();
  }
}
