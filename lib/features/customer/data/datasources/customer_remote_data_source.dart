import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/customer_model.dart';

abstract class ICustomerRemoteDataSource {
  Future<CustomerModel> getCustomerById(String id);
}

class CustomerRemoteDataSource implements ICustomerRemoteDataSource {
  final IHttpClient client;
  final IUrlCreator urlCreator;

  CustomerRemoteDataSource(this.client, this.urlCreator);

  @override
  Future<CustomerModel> getCustomerById(String id) async {
    try {
      final response = await client.get(urlCreator.create(endpoint: Endpoints.register, pathSegments: [id]));

      switch (response.statusCode) {
        case 200:
          return CustomerModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        case 404:
          throw ConflictException();
        default:
          throw ServerException();
      }
    } on Exception {
      throw ServerException();
    }
  }
}
