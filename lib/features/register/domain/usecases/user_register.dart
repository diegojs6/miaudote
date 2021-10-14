import 'package:dartz/dartz.dart';
import '../../../login/domain/entities/login.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/i_register_repository.dart';

class UserRegister {
  final IRegisterReposity repository;

  UserRegister(this.repository);

  Future<Either<Failure, Login>> call({
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
