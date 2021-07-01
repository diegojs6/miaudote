import 'package:miaudote/features/login/data/models/login_model.dart';

abstract class ILoginRemoteDataSource {
  Future<LoginModel> getLogin();
}

class LoginRemoteDataSource implements ILoginRemoteDataSource {
  final IHttpClient client;
}