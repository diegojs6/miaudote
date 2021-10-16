// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomExceptionTearOff {
  const _$CustomExceptionTearOff();

  ServerException serverException() {
    return const ServerException();
  }

  NetworkException networkException() {
    return const NetworkException();
  }

  InvalidInputException invalidInputException() {
    return const InvalidInputException();
  }

  AccountAsUsedException accountAsUsedException() {
    return const AccountAsUsedException();
  }

  ConflictException conflictException() {
    return const ConflictException();
  }

  CacheException cacheException() {
    return const CacheException();
  }
}

/// @nodoc
const $CustomException = _$CustomExceptionTearOff();

/// @nodoc
mixin _$CustomException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionCopyWith<$Res> {
  factory $CustomExceptionCopyWith(
          CustomException value, $Res Function(CustomException) then) =
      _$CustomExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._value, this._then);

  final CustomException _value;
  // ignore: unused_field
  final $Res Function(CustomException) _then;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(
      ServerException _value, $Res Function(ServerException) _then)
      : super(_value, (v) => _then(v as ServerException));

  @override
  ServerException get _value => super._value as ServerException;
}

/// @nodoc

class _$ServerException extends ServerException {
  const _$ServerException() : super._();

  @override
  String toString() {
    return 'CustomException.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return serverException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException extends CustomException {
  const factory ServerException() = _$ServerException;
  const ServerException._() : super._();
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(
      NetworkException _value, $Res Function(NetworkException) _then)
      : super(_value, (v) => _then(v as NetworkException));

  @override
  NetworkException get _value => super._value as NetworkException;
}

/// @nodoc

class _$NetworkException extends NetworkException {
  const _$NetworkException() : super._();

  @override
  String toString() {
    return 'CustomException.networkException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return networkException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return networkException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(this);
    }
    return orElse();
  }
}

abstract class NetworkException extends CustomException {
  const factory NetworkException() = _$NetworkException;
  const NetworkException._() : super._();
}

/// @nodoc
abstract class $InvalidInputExceptionCopyWith<$Res> {
  factory $InvalidInputExceptionCopyWith(InvalidInputException value,
          $Res Function(InvalidInputException) then) =
      _$InvalidInputExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidInputExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $InvalidInputExceptionCopyWith<$Res> {
  _$InvalidInputExceptionCopyWithImpl(
      InvalidInputException _value, $Res Function(InvalidInputException) _then)
      : super(_value, (v) => _then(v as InvalidInputException));

  @override
  InvalidInputException get _value => super._value as InvalidInputException;
}

/// @nodoc

class _$InvalidInputException extends InvalidInputException {
  const _$InvalidInputException() : super._();

  @override
  String toString() {
    return 'CustomException.invalidInputException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidInputException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return invalidInputException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (invalidInputException != null) {
      return invalidInputException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return invalidInputException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (invalidInputException != null) {
      return invalidInputException(this);
    }
    return orElse();
  }
}

abstract class InvalidInputException extends CustomException {
  const factory InvalidInputException() = _$InvalidInputException;
  const InvalidInputException._() : super._();
}

/// @nodoc
abstract class $AccountAsUsedExceptionCopyWith<$Res> {
  factory $AccountAsUsedExceptionCopyWith(AccountAsUsedException value,
          $Res Function(AccountAsUsedException) then) =
      _$AccountAsUsedExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountAsUsedExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $AccountAsUsedExceptionCopyWith<$Res> {
  _$AccountAsUsedExceptionCopyWithImpl(AccountAsUsedException _value,
      $Res Function(AccountAsUsedException) _then)
      : super(_value, (v) => _then(v as AccountAsUsedException));

  @override
  AccountAsUsedException get _value => super._value as AccountAsUsedException;
}

/// @nodoc

class _$AccountAsUsedException extends AccountAsUsedException {
  const _$AccountAsUsedException() : super._();

  @override
  String toString() {
    return 'CustomException.accountAsUsedException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountAsUsedException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return accountAsUsedException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (accountAsUsedException != null) {
      return accountAsUsedException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return accountAsUsedException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (accountAsUsedException != null) {
      return accountAsUsedException(this);
    }
    return orElse();
  }
}

abstract class AccountAsUsedException extends CustomException {
  const factory AccountAsUsedException() = _$AccountAsUsedException;
  const AccountAsUsedException._() : super._();
}

/// @nodoc
abstract class $ConflictExceptionCopyWith<$Res> {
  factory $ConflictExceptionCopyWith(
          ConflictException value, $Res Function(ConflictException) then) =
      _$ConflictExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConflictExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $ConflictExceptionCopyWith<$Res> {
  _$ConflictExceptionCopyWithImpl(
      ConflictException _value, $Res Function(ConflictException) _then)
      : super(_value, (v) => _then(v as ConflictException));

  @override
  ConflictException get _value => super._value as ConflictException;
}

/// @nodoc

class _$ConflictException extends ConflictException {
  const _$ConflictException() : super._();

  @override
  String toString() {
    return 'CustomException.conflictException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConflictException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return conflictException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return conflictException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException(this);
    }
    return orElse();
  }
}

abstract class ConflictException extends CustomException {
  const factory ConflictException() = _$ConflictException;
  const ConflictException._() : super._();
}

/// @nodoc
abstract class $CacheExceptionCopyWith<$Res> {
  factory $CacheExceptionCopyWith(
          CacheException value, $Res Function(CacheException) then) =
      _$CacheExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $CacheExceptionCopyWith<$Res> {
  _$CacheExceptionCopyWithImpl(
      CacheException _value, $Res Function(CacheException) _then)
      : super(_value, (v) => _then(v as CacheException));

  @override
  CacheException get _value => super._value as CacheException;
}

/// @nodoc

class _$CacheException extends CacheException {
  const _$CacheException() : super._();

  @override
  String toString() {
    return 'CustomException.cacheException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
    required TResult Function() accountAsUsedException,
    required TResult Function() conflictException,
    required TResult Function() cacheException,
  }) {
    return cacheException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    TResult Function()? accountAsUsedException,
    TResult Function()? conflictException,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
    required TResult Function(AccountAsUsedException value)
        accountAsUsedException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(CacheException value) cacheException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    TResult Function(AccountAsUsedException value)? accountAsUsedException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(CacheException value)? cacheException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException extends CustomException {
  const factory CacheException() = _$CacheException;
  const CacheException._() : super._();
}
