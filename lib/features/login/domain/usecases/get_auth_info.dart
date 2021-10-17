import '../../../customer/domain/entities/customer.dart';
import '../repositories/i_login_repository.dart';

class GetAuthInfo {
  final ILoginRepository repository;

  GetAuthInfo(this.repository);

  Future<Customer?> call() async {
    print(repository.getAuthInfo().toString());
    return await repository.getAuthInfo();
  }
}
