import '../repositories/i_login_repository.dart';

class GetRefreshToken {
  final ILoginRepository repository;

  GetRefreshToken(this.repository);

  Future<String?> call() async {
    return await repository.getRefreshToken();
  }
}
