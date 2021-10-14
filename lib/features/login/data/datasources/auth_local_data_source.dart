import 'dart:convert';

import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../auth_api_consts.dart';
import '../models/login_model.dart';

abstract class IAuthLocalDataSource {
  Future<LoginModel?> getAuthInfo();
  Future<String?> getToken();
  Future<String?> getRefreshToken();
  Future<void> clearAuthData();
  Future<void> setAuthData(String authData);
}

class AuthLocalDataSource implements IAuthLocalDataSource {
  final SharedPreferences preferences;

  AuthLocalDataSource(this.preferences);

  @override
  Future<void> clearAuthData() async {
    await preferences.remove(AuthApiConsts.authDataKey);
  }

  @override
  Future<LoginModel?> getAuthInfo() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);
    return data != null ? LoginModel.fromJson(JwtDecoder.decode(json.decode(data)['token'])) : null;
  }

  @override
  Future<String?> getToken() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);
    return data != null ? json.decode(data)['token'] : null;
  }

  @override
  Future<String?> getRefreshToken() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);
    return data != null ? json.decode(data)['refreshToken'] : null;
  }

  @override
  Future<void> setAuthData(String authData) async {
    await preferences.setString(AuthApiConsts.authDataKey, authData);
  }
}
