import 'dart:convert';

import 'package:miaudote/core/api/api_interceptor.dart';
import 'package:miaudote/core/api/url_creator.dart';
import 'package:miaudote/core/device/network_info.dart';
import 'package:miaudote/features/register/data/models/register_model.dart';

abstract class IRegisterRemoteDataSource {
  Future<RegisterModel> getRegister();
}

class RegisterRemoteDataSource implements IRegisterRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  RegisterRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<RegisterModel> getRegister() async {
   final isConnected = await networkInfo.isConnected;
   if (isConnected) {
     final response = await client.get(urlCreator.create(endpoint: Endpoint.getDog));
     switch (response.statusCode) {
       case 200:
       return RegisterModel.fromjson(jsonDecode(utf8.decode(response.bodyBytes)));
     }
   }
  }
}