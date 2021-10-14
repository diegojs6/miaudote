import 'dart:convert';

import '../../../../core/api/api_interceptor.dart';
import '../../../../core/api/endpoints.dart';
import '../../../../core/api/url_creator.dart';
import '../../../../core/device/network_info.dart';
import '../../../../core/errors/exceptions.dart';
import '../models/animals_model.dart';
import '../models/characteristics_model.dart';

abstract class IAnimalsRemoteDataSource {
  Future<AnimalsModel> getAnimals({
    String? objectId,
    DateTime? createAt,
    DateTime? updateAt,
    String? size,
    String? gender,
    num? heigth,
    String? ong,
    String? name,
    bool? adopted,
    CharacteristicsModel? characteristicsModel,
    bool? verify,
    String? description,
    String? age,
    String? animalType,
  });
}

class AnimalsRemoteDataSource implements IAnimalsRemoteDataSource {
  final IHttpClient client;
  final INetworkInfo networkInfo;
  final UrlCreator urlCreator;

  AnimalsRemoteDataSource(this.client, this.networkInfo, this.urlCreator);

  @override
  Future<AnimalsModel> getAnimals({
    String? objectId,
    DateTime? createAt,
    DateTime? updateAt,
    String? size,
    String? gender,
    num? heigth,
    String? ong,
    String? name,
    bool? adopted,
    CharacteristicsModel? characteristicsModel,
    bool? verify,
    String? description,
    String? age,
    String? animalType,
  }) async {
    final isConnected = await networkInfo.isConnected;
    if (isConnected) {
      var body = {
        'objectId': objectId,
        'createAt': createAt,
        'updateAt': updateAt,
        'size': size,
        'gender': gender,
        'heigth': heigth,
        'ong': ong,
        'name': name,
        'adopted': adopted,
        'characteristicsModel': characteristicsModel,
        'verify': verify,
        'description': description,
        'age': age,
        'animalType': animalType,
      };
      final response = await client.post(urlCreator.create(endpoint: Endpoints.getAnimals), jsonEncode(body));
      switch (response.statusCode) {
        case 200:
          return AnimalsModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
        case 400:
        default:
          throw ServerException();
      }
    } else {
      throw NetworkException();
    }
  }
}
