import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/login.dart';
import '../repositories/i_login_repository.dart';

class GetCurrentUser{
  final ILoginRepository repository;

  GetCurrentUser(this.repository);

  Future<Either<Failure, Login>> call(String token) async {
    return await repository.getCurrentUser(token);
  }
}