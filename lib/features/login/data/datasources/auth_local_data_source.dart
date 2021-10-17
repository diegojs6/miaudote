import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../customer/data/models/customer_model.dart';
import '../auth_api_consts.dart';

abstract class IAuthLocalDataSource {
  Future<CustomerModel?> getAuthInfo();
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
  Future<CustomerModel?> getAuthInfo() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);

    Map<String, dynamic> map = data != null ? jsonDecode(data) : {};
    return data != null ? CustomerModel.fromJson(map) : null;
  }

  @override
  Future<String?> getToken() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);
    return data != null ? json.decode(data)['sessionToken'] : null;
  }

  @override
  Future<String?> getRefreshToken() async {
    var data = preferences.getString(AuthApiConsts.authDataKey);
    return data != null ? json.decode(data)['sessionToken'] : null;
  }

  @override
  Future<void> setAuthData(String authData) async {
    await preferences.setString(AuthApiConsts.authDataKey, authData);
  }
}
