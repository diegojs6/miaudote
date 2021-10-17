import '../repositories/I_customer_repository.dart';

class DeleteCustomer {
  final ICustomerRepository repository;

  DeleteCustomer(this.repository);

  Future<void> call() async {
    return await repository.deleteCustomer();
  }
}
