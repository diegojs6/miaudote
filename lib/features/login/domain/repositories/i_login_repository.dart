import 'package:dartz/dartz.dart';

import '../../../../core/errors/failuresE.dart';
import '../../../customer/domain/entities/customer.dart';

abstract class ILoginRepository {
  Future<Either<Failure, Customer>> getLogin(String username, String password);
  Future<Either<Failure, String>> getCurrentUser({required bool forceRefresh});
  Future<String?> getRefreshToken();
  Future<Customer?> getAuthInfo();
  Future<void> signOut();
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
  });
}
