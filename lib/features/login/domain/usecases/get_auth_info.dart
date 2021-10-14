import '../entities/login.dart';
import '../repositories/i_login_repository.dart';

class GetAuthInfo {
  final ILoginRepository repository;

  GetAuthInfo(this.repository);

  Future<Login?> call() async {
    return await repository.getAuthInfo();
  }
}
