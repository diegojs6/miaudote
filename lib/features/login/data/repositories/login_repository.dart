import 'package:dartz/dartz.dart';
import 'package:miaudote/core/errors/exceptions.dart';
import 'package:miaudote/core/errors/failures.dart';
import 'package:miaudote/features/login/data/datasources/login_remote_data_source.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';
import 'package:miaudote/features/login/domain/repositories/i_login_repository.dart';

class LoginRepository implements ILoginRepository {
  final ILoginRemoteDataSource remoteDataSource;

  LoginRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, Login>> getLogin(String username, String password) async {
    try {
      final response = await remoteDataSource.getLogin(username: username, password: password);
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return const Left(NetworkFailure());
    } on ServerException {
      return const Left(ServerFailure());
    } on InvalidInputException {
      return const Left(InvalidInputFailure());
    }
  }

  @override
  Future<Either<Failure, Login>> getCurrentUser(String sessionToken) async {
    try {
      final response = await remoteDataSource.getToken(sessionToken: sessionToken);
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return const Left(NetworkFailure());
    } on ServerException {
      return const Left(ServerFailure());
    }
  }
}
