import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/login.dart';
import '../repositories/i_login_repository.dart';

class GetLogin{
  final ILoginRepository repository;

  GetLogin(this.repository);

  Future<Either<Failure, Login>> call(String username, String password) async {
    return await repository.getLogin(username, password);
  }
}