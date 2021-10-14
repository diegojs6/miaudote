import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/login.dart';
import '../../domain/repositories/i_login_repository.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/login_remote_data_source.dart';

class LoginRepository implements ILoginRepository {
  final ILoginRemoteDataSource remoteDataSource;
  final IAuthLocalDataSource localDataSource;

  LoginRepository(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, Login>> getLogin(String username, String password) async {
    try {
      final response = await remoteDataSource.getLogin(username: username, password: password);
      final entity = response.toEntity();
      return Right(entity);
    } on NetworkException {
      return Left(NetworkFailure());
    } on ServerException {
      return Left(ServerFailure());
    } on InvalidInputException {
      return Left(InvalidInputFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getCurrentUser({required bool forceRefresh}) async {
    try {
      var token = await localDataSource.getToken();
      if (token == null || JwtDecoder.isExpired(token) || forceRefresh) {
        var refreshToken = await localDataSource.getRefreshToken();
        var result = await remoteDataSource.getToken(sessionToken: refreshToken);
        var resultJson = json.decode(result) as Map;
        await localDataSource.setAuthData(result);
        return Right(resultJson['token']);
      } else {
        return Right(token);
      }
    } on InvalidInputException {
      return const Left(InvalidInputFailure());
    } on ServerException {
      return const Left(ServerFailure());
    } on NetworkException {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<String?> getRefreshToken() async {
    return await localDataSource.getRefreshToken();
  }

  @override
  Future<Login?> getAuthInfo() async {
    var result = await localDataSource.getAuthInfo();
    return result?.toEntity();
  }

  @override
  Future<void> signOut() async {
    await localDataSource.clearAuthData();
  }
}
