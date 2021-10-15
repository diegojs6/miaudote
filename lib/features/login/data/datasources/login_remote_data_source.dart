import 'dart:convert';

import 'package:miaudote/core/api/api_interceptor.dart';
import 'package:miaudote/core/api/endpoints.dart';
import 'package:miaudote/core/api/url_creator.dart';
import 'package:miaudote/core/device/network_info.dart';
import 'package:miaudote/core/errors/exceptions.dart';
import 'package:miaudote/features/customer/data/models/customer_model.dart';

abstract class ILoginRemoteDataSource {
  Future<CustomerModel> getLogin({required String username, required String password});
  Future<String> getToken({String? sessionToken});
  Future<String> userRegister({
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

class LoginRemoteDataSource implements ILoginRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  LoginRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<CustomerModel> getLogin({required String username, required String password}) async {
    if (await networkInfo.isConnected) {
      final response = await client.get(
          urlCreator.create(endpoint: Endpoints.login, queryParameters: {
            'username': username,
            'password': password,
          }),
          headers: {'X-Parse-Revocable-Session': 1});

      switch (response.statusCode) {
        case 200:
          return CustomerModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        case 404:
        case 101:
          throw InvalidInputException();
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<String> getToken({String? sessionToken}) async {
    if (await networkInfo.isConnected) {
      final response = await client
          .get(urlCreator.create(endpoint: Endpoints.getCurrentUser), headers: {'X-Parse-Session-Token': sessionToken});
      switch (response.statusCode) {
        case 200:
          return jsonDecode(utf8.decode(response.bodyBytes));
        case 404:
        case 101:
          throw InvalidInputException();
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<String> userRegister({
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
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      var body = {
        'username': username,
        'email': email,
        'address': address,
        'fullName': fullName,
        'lat': lat,
        'long': long,
        'contact': contact,
        'birthDate': birthDate,
        'password': password,
      };
      final response = await client.post(urlCreator.create(endpoint: Endpoints.register), jsonEncode(body));
      switch (response.statusCode) {
        case 201:
          return utf8.decode(response.bodyBytes);
        case 208:
          throw AccountAsUsedException();
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
