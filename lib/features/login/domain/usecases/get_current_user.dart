import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuresE.dart';
import '../repositories/i_login_repository.dart';

class GetCurrentUser {
  final ILoginRepository repository;

  GetCurrentUser(this.repository);

  Future<Either<Failure, String?>> call({required bool forceRefresh}) async {
    return await repository.getCurrentUser(forceRefresh: forceRefresh);
  }
}
