import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/device/network_info.dart';
import '../../../../core/errors/exceptionE.dart';

abstract class ILoginRemoteDataSource {
  Future<String> getLogin({required String username, required String password});
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
  Future<String> getLogin({required String username, required String password}) async {
    if (await networkInfo.isConnected) {
      final response = await client.get(
          urlCreator.create(endpoint: Endpoints.login, queryParameters: {
            'username': username,
            'password': password,
          }),
          headers: {'X-Parse-Revocable-Session': 1});

      switch (response.statusCode) {
        case 200:
          return utf8.decode(response.bodyBytes);
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
        'type': 'customer'
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
