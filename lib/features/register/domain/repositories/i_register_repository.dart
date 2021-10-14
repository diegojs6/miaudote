import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../login/domain/entities/login.dart';

abstract class IRegisterReposity {
  Future<Either<Failure, Login>> userRegister({
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
