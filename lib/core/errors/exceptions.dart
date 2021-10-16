import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class CustomException with _$CustomException implements Exception {
  const CustomException._();
  const factory CustomException.serverException() = ServerException;
  const factory CustomException.networkException() = NetworkException;
  const factory CustomException.invalidInputException() = InvalidInputException;
  const factory CustomException.accountAsUsedException() = AccountAsUsedException;
  const factory CustomException.conflictException() = ConflictException;
  const factory CustomException.cacheException() = CacheException;
}
