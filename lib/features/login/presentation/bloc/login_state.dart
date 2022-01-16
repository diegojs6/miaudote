import 'package:equatable/equatable.dart';

import '../../../customer/domain/entities/customer.dart';

enum LoginStatus { initial, loading, completed, loginError }

class LoginState extends Equatable {
  final LoginStatus status;
  final Customer? customer;
  final String? message;

  LoginState._(this.status, this.customer, this.message);

  @override
  List<Object?> get props => [status, customer, message];

  LoginState.initial() : this._(LoginStatus.initial, null, null);

  LoginState loading() => LoginState._(LoginStatus.loading, customer, message);

  LoginState completed(Customer? customer) => LoginState._(LoginStatus.loading, customer, message);

  LoginState loginError(String? msgError) => LoginState._(LoginStatus.loading, customer, msgError);
}
