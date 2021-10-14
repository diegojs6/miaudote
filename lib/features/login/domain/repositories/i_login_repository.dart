import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/login.dart';

abstract class ILoginRepository {
  Future<Either<Failure, Login>> getLogin(String username, String password);
  Future<Either<Failure, String>> getCurrentUser({required bool forceRefresh});
  Future<String?> getRefreshToken();
  Future<Login?> getAuthInfo();
  Future<void> signOut();
}
