import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/device/network_info.dart';
import '../../../../core/errors/exceptionE.dart';
import '../models/ong_model.dart';

abstract class IOngRemoteDataSource {
  Future<List<OngModel>> getOngs();
}

class OngRemoteDataSource implements IOngRemoteDataSource {
  final IHttpClient client;
  final IUrlCreator urlCreator;
  final INetworkInfo networkInfo;

  OngRemoteDataSource(this.client, this.urlCreator, this.networkInfo);

  @override
  Future<List<OngModel>> getOngs() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      final response = await client.get(urlCreator.create(endpoint: Endpoints.ong));
      switch (response.statusCode) {
        case 200:
          Map map = jsonDecode(utf8.decode(response.bodyBytes));
          List content = map['results'];
          return content.map((e) => OngModel.fromJson(e)).toList();
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
