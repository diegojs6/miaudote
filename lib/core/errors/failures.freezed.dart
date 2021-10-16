// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  ServerFailure serverFailure() {
    return const ServerFailure();
  }

  NetworkFailure networkFailure() {
    return const NetworkFailure();
  }

  InvalidInputFailure invalidInputFailure() {
    return const InvalidInputFailure();
  }

  AccountAsUsedFailure accountAsUsedFailure() {
    return const AccountAsUsedFailure();
  }

  ConflictFailure conflictFailure() {
    return const ConflictFailure();
  }

  CacheFailure cacheException() {
    return const CacheFailure();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure() : super._();

  @override
  String toString() {
    return 'Failure.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends Failure {
  const factory ServerFailure() = _$ServerFailure;
  const ServerFailure._() : super._();
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(
      NetworkFailure _value, $Res Function(NetworkFailure) _then)
      : super(_value, (v) => _then(v as NetworkFailure));

  @override
  NetworkFailure get _value => super._value as NetworkFailure;
}

/// @nodoc

class _$NetworkFailure extends NetworkFailure {
  const _$NetworkFailure() : super._();

  @override
  String toString() {
    return 'Failure.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure extends Failure {
  const factory NetworkFailure() = _$NetworkFailure;
  const NetworkFailure._() : super._();
}

/// @nodoc
abstract class $InvalidInputFailureCopyWith<$Res> {
  factory $InvalidInputFailureCopyWith(
          InvalidInputFailure value, $Res Function(InvalidInputFailure) then) =
      _$InvalidInputFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidInputFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $InvalidInputFailureCopyWith<$Res> {
  _$InvalidInputFailureCopyWithImpl(
      InvalidInputFailure _value, $Res Function(InvalidInputFailure) _then)
      : super(_value, (v) => _then(v as InvalidInputFailure));

  @override
  InvalidInputFailure get _value => super._value as InvalidInputFailure;
}

/// @nodoc

class _$InvalidInputFailure extends InvalidInputFailure {
  const _$InvalidInputFailure() : super._();

  @override
  String toString() {
    return 'Failure.invalidInputFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidInputFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return invalidInputFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return invalidInputFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (invalidInputFailure != null) {
      return invalidInputFailure(this);
    }
    return orElse();
  }
}

abstract class InvalidInputFailure extends Failure {
  const factory InvalidInputFailure() = _$InvalidInputFailure;
  const InvalidInputFailure._() : super._();
}

/// @nodoc
abstract class $AccountAsUsedFailureCopyWith<$Res> {
  factory $AccountAsUsedFailureCopyWith(AccountAsUsedFailure value,
          $Res Function(AccountAsUsedFailure) then) =
      _$AccountAsUsedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountAsUsedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements $AccountAsUsedFailureCopyWith<$Res> {
  _$AccountAsUsedFailureCopyWithImpl(
      AccountAsUsedFailure _value, $Res Function(AccountAsUsedFailure) _then)
      : super(_value, (v) => _then(v as AccountAsUsedFailure));

  @override
  AccountAsUsedFailure get _value => super._value as AccountAsUsedFailure;
}

/// @nodoc

class _$AccountAsUsedFailure extends AccountAsUsedFailure {
  const _$AccountAsUsedFailure() : super._();

  @override
  String toString() {
    return 'Failure.accountAsUsedFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AccountAsUsedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return accountAsUsedFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (accountAsUsedFailure != null) {
      return accountAsUsedFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return accountAsUsedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (accountAsUsedFailure != null) {
      return accountAsUsedFailure(this);
    }
    return orElse();
  }
}

abstract class AccountAsUsedFailure extends Failure {
  const factory AccountAsUsedFailure() = _$AccountAsUsedFailure;
  const AccountAsUsedFailure._() : super._();
}

/// @nodoc
abstract class $ConflictFailureCopyWith<$Res> {
  factory $ConflictFailureCopyWith(
          ConflictFailure value, $Res Function(ConflictFailure) then) =
      _$ConflictFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConflictFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ConflictFailureCopyWith<$Res> {
  _$ConflictFailureCopyWithImpl(
      ConflictFailure _value, $Res Function(ConflictFailure) _then)
      : super(_value, (v) => _then(v as ConflictFailure));

  @override
  ConflictFailure get _value => super._value as ConflictFailure;
}

/// @nodoc

class _$ConflictFailure extends ConflictFailure {
  const _$ConflictFailure() : super._();

  @override
  String toString() {
    return 'Failure.conflictFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConflictFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return conflictFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
    TResult Function()? cacheException,
    required TResult orElse(),
  }) {
    if (conflictFailure != null) {
      return conflictFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return conflictFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (conflictFailure != null) {
      return conflictFailure(this);
    }
    return orElse();
  }
}

abstract class ConflictFailure extends Failure {
  const factory ConflictFailure() = _$ConflictFailure;
  const ConflictFailure._() : super._();
}

/// @nodoc
abstract class $CacheFailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;
}

/// @nodoc

class _$CacheFailure extends CacheFailure {
  const _$CacheFailure() : super._();

  @override
  String toString() {
    return 'Failure.cacheException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() invalidInputFailure,
    required TResult Function() accountAsUsedFailure,
    required TResult Function() conflictFailure,
    required TResult Function() cacheException,
  }) {
    return cacheException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? invalidInputFailure,
    TResult Function()? accountAsUsedFailure,
    TResult Function()? conflictFailure,
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
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(NetworkFailure value) networkFailure,
    required TResult Function(InvalidInputFailure value) invalidInputFailure,
    required TResult Function(AccountAsUsedFailure value) accountAsUsedFailure,
    required TResult Function(ConflictFailure value) conflictFailure,
    required TResult Function(CacheFailure value) cacheException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(NetworkFailure value)? networkFailure,
    TResult Function(InvalidInputFailure value)? invalidInputFailure,
    TResult Function(AccountAsUsedFailure value)? accountAsUsedFailure,
    TResult Function(ConflictFailure value)? conflictFailure,
    TResult Function(CacheFailure value)? cacheException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheFailure extends Failure {
  const factory CacheFailure() = _$CacheFailure;
  const CacheFailure._() : super._();
}
