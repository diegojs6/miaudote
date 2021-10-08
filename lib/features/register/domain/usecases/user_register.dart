import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/register.dart';
import '../repositories/i_register_repository.dart';

class UserRegister {
  final IRegisterReposity reposity;

  UserRegister(this.reposity);

  Future<Either<Failure, Register>> call({
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
    return await reposity.userRegister(
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
