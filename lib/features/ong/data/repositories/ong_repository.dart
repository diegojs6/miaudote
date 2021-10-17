import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/ong.dart';
import '../../domain/repositories/i_ong_repository.dart';
import '../datasources/ong_remote_data_source.dart';

class OngRepository implements IOngRepository {
  final IOngRemoteDataSource remoteDataSource;

  OngRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Ong>>> getOngs() async {
    try {
      final response = await remoteDataSource.getOngs();
      final ongList = response.map((e) => e.toEntity()).toList();
      return Right(ongList);
    } on NetworkException {
      return Left(NetworkFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
