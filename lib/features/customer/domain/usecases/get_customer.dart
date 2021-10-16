import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/customer.dart';
import '../repositories/I_customer_repository.dart';

class GetCustomer {
  final ICustomerRepository repository;

  GetCustomer(this.repository);

  Future<Either<Failure, Customer>> call(String? id) async {
    return await repository.getCustomer(id);
  }
}
