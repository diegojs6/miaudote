import 'package:dartz/dartz.dart';
import 'package:miaudote/core/errors/failures.dart';
import 'package:miaudote/features/login/domain/entities/login.dart';

abstract class ILoginRepository {
  Future<Either<Failure, Login>> getLogin(String username, String password);
}