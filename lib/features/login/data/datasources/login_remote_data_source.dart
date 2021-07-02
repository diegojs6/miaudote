import 'dart:convert';

import 'package:miaudote/core/api/api_interceptor.dart';
import 'package:miaudote/core/api/endpoints.dart';
import 'package:miaudote/core/api/url_creator.dart';
import 'package:miaudote/core/device/network_info.dart';
import 'package:miaudote/core/errors/exceptions.dart';
import 'package:miaudote/features/login/data/models/login_model.dart';

abstract class ILoginRemoteDataSource {
  Future<LoginModel> getLogin({required String username,required String password});
}

class LoginRemoteDataSource implements ILoginRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  LoginRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<LoginModel> getLogin({required String username, required String password}) async {
    if (await networkInfo.isConnected) {
      final response = await client.get(
        urlCreator.create(endpoint: Endpoints.login, queryParameters: {
          'username': username,
          'password': password,
        }),
        headers: {
          'X-Parse-Revocable-Session': 1
        }
      );

      switch (response.statusCode) {
        case 200:
          return LoginModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
