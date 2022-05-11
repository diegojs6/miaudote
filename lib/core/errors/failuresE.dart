import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class ServerFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}

class CacheFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}

class NetworkFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}

class InvalidInputFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}

class AccountAsUsedFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}

class ConflictFailure implements Failure {
  @override
  List<Object> get props => [];

  @override
  bool? get stringify => true;
}
