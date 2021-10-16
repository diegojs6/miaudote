import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../customer/domain/entities/customer.dart';
import '../repositories/i_login_repository.dart';

class UserRegister {
  final ILoginRepository repository;

  UserRegister(this.repository);

  Future<Either<Failure, Customer>> call({
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
    return await repository.userRegister(
        username: username,
        email: email,
        address: address,
        fullName: fullName,
        lat: lat,
        long: long,
        contact: contact,
        birthDate: birthDate,
        password: password);
  }
}
