import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/device/network_info.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/register_model.dart';

abstract class IRegisterRemoteDataSource {
  Future<RegisterModel> userRegister({
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

class RegisterRemoteDataSource implements IRegisterRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  RegisterRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<RegisterModel> userRegister({
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
        case 200:
          return RegisterModel.fromjson(jsonDecode(utf8.decode(response.bodyBytes)));
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
