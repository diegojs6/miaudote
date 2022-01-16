import 'package:equatable/equatable.dart';

import 'package:miaudote/features/customer/domain/entities/customer.dart';

enum AuthStatus { initial, unauthenticated, authenticated, loading }

class AuthState extends Equatable {
  final AuthStatus status;
  final Customer? customer;

  AuthState._(this.status, this.customer);

  @override
  List<Object?> get props => [status, customer];

  AuthState.initial() : this._(AuthStatus.initial, null);

  AuthState loading() => AuthState._(AuthStatus.loading, customer);

  AuthState unauthenticated() => AuthState._(AuthStatus.unauthenticated, customer);

  AuthState authenticated(Customer? customer) => AuthState._(AuthStatus.authenticated, customer);
}
