import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/customer.dart';

abstract class ICustomerRepository {
  Future<Either<Failure, Customer>> getCustomer(String? id);
  Future<void> deleteCustomer();
}