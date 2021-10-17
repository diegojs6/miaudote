import 'dart:convert';

import '../../../../core/device/secure_storage.dart';
import '../../../../core/errors/exceptions.dart';
import '../customer_api_consts.dart';
import '../models/customer_model.dart';

abstract class ICustomerLocalDataSource {
  Future<CustomerModel> getCachedCustomer();
  Future<void> setCachedCustomer(CustomerModel customer);
  Future<void> deleteCachedCustomer();
}

class CustomerLocalDataSource implements ICustomerLocalDataSource {
  final ISecureStorage storage;

  CustomerLocalDataSource(this.storage);

  @override
  Future<CustomerModel> getCachedCustomer() async {
    var customerModelString = await storage.read(CustomerApiConsts.customerLocalDataSource);
    if (customerModelString == null) {
      throw const CustomException.cacheException();
    } else {
      return Future.value(CustomerModel.fromJson(jsonDecode(customerModelString)));
    }
  }

  @override
  Future<void> setCachedCustomer(CustomerModel customer) async {
    var customerString = jsonEncode(customer.toJson());
    await storage.write(CustomerApiConsts.customerLocalDataSource, customerString);
  }

  @override
  Future<void> deleteCachedCustomer() async {
    await storage.delete(CustomerApiConsts.customerLocalDataSource);
  }
}
