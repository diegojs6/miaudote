import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/device/network_info.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/animals_model.dart';

abstract class IAnimalsRemoteDataSource {
  Future<List<AnimalsModel>> getAnimals();
}

class AnimalsRemoteDataSource implements IAnimalsRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final IUrlCreator urlCreator;

  AnimalsRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<List<AnimalsModel>> getAnimals() async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      final response = await client.get(urlCreator.create(endpoint: Endpoints.getAnimals));
      switch (response.statusCode) {
        case 200:
          Map map = jsonDecode(utf8.decode(response.bodyBytes));
          List content = map['results'];
          return content.map((e) => AnimalsModel.fromJson(e)).toList();
        case 400:
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
