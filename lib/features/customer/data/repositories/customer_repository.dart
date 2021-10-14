import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/customer.dart';
import '../../domain/repositories/I_customer_repository.dart';
import '../datasources/customer_local_data_source.dart';
import '../datasources/customer_remote_data_source.dart';

class CustomerRepository implements ICustomerRepository {
  final ICustomerRemoteDataSource remoteDataSource;
  final ICustomerLocalDataSource localDataSource;

  CustomerRepository(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, Customer>> getCustomer(String? id) async {
    try {
      final customerModelCached = await localDataSource.getCachedCustomer();
      if (customerModelCached.objectId == id || id == null) {
        return Right(customerModelCached.toEntity());
      } else {
        return await _getCustomerRemote(id);
      }
    } on CacheException {
      return await _getCustomerRemote(id);
    }
  }

  Future<Either<Failure, Customer>> _getCustomerRemote(String? id) async {
    try {
      final customerModelRemote = await remoteDataSource.getCustomerById(id ?? '');
      await localDataSource.setCachedCustomer(customerModelRemote);
      return Right(customerModelRemote.toEntity());
    } on InvalidInputException {
      return const Left(Failure.invalidInputFailure());
    } on ServerException {
      return const Left(Failure.serverFailure());
    }
  }

  @override
  Future<void> deleteCustomer() async {
    await localDataSource.deleteCachedCustomer();
  }
}
