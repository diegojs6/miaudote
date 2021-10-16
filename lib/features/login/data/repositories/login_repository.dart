import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../customer/data/models/customer_model.dart';
import '../../../customer/domain/entities/customer.dart';
import '../../domain/repositories/i_login_repository.dart';
import '../datasources/auth_local_data_source.dart';
import '../datasources/login_remote_data_source.dart';

class LoginRepository implements ILoginRepository {
  final ILoginRemoteDataSource remoteDataSource;
  final IAuthLocalDataSource localDataSource;

  LoginRepository(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, Customer>> getLogin(String username, String password) async {
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
      if (token == null || forceRefresh) {
        var refreshToken = await localDataSource.getRefreshToken();
        var result = await remoteDataSource.getToken(sessionToken: refreshToken);
        var resultJson = json.decode(result) as Map;
        await localDataSource.setAuthData(result);
        return Right(resultJson['sessionToken']);
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
  Future<Customer?> getAuthInfo() async {
    var result = await localDataSource.getAuthInfo();
    var entity = result?.toEntity();
    return entity;
  }

  @override
  Future<void> signOut() async {
    await localDataSource.clearAuthData();
  }

  @override
  Future<Either<Failure, Customer>> userRegister({
    required String username,
    String? email,
    String? address,
    String? fullName,
    String? lat,
    String? long,
    num? contact,
    String? birthDate,
    required String password,
  }) async {
    try {
      final response = await remoteDataSource.userRegister(
        username: username,
        email: email,
        address: address,
        fullName: fullName,
        lat: lat,
        long: long,
        contact: contact,
        birthDate: birthDate,
        password: password,
      );
      await localDataSource.setAuthData(response);
      return Right(CustomerModel.fromJson((json.decode(response) as Map)['sessionToken']).toEntity());
    } on ServerException {
      return Left(NetworkFailure());
    } on NetworkException {
      return Left(ServerFailure());
    } on InvalidInputException {
      return Left(InvalidInputFailure());
    } on AccountAsUsedException {
      return Left(AccountAsUsedFailure());
    }
  }
}
