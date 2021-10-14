import '../repositories/i_login_repository.dart';

class SignOut {
  final ILoginRepository repository;

  SignOut(this.repository);

  Future<void> call() async {
    await repository.signOut();
  }
}
