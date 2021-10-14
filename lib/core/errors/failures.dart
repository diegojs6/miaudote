import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.serverFailure() = ServerFailure;
  const factory Failure.networkFailure() = NetworkFailure;
  const factory Failure.invalidInputFailure() = InvalidInputFailure;
  const factory Failure.accountAsUsedFailure() = AccountAsUsedFailure;
  const factory Failure.conflictFailure() = ConflictFailure;
  const factory Failure.cacheException() = CacheFailure;
}
