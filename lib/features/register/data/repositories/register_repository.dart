import 'package:miaudote/core/errors/exceptions.dart';
import 'package:miaudote/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:miaudote/features/register/data/datasources/register_remote_data_source.dart';
import 'package:miaudote/features/register/domain/entities/register.dart';
import 'package:miaudote/features/register/domain/repositories/i_register_repository.dart';

class RegisterRepository implements IRegisterReposity {
  final IRegisterRemoteDataSource remoteDataSource;

  RegisterRepository(this.remoteDataSource);

  @override
  Future<Either<Failure, Register>> userRegister({
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
      final entity = response.toEntity();
      return Right(entity);
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
