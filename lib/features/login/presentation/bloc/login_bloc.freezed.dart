// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _Started started() {
    return const _Started();
  }

  Load load({required String username, required String password}) {
    return Load(
      username: username,
      password: password,
    );
  }

  _LoginComplete loginComplete({required Login user}) {
    return _LoginComplete(
      user: user,
    );
  }

  _Logout logout() {
    return const _Logout();
  }

  _Error error({required String message}) {
    return _Error(
      message: message,
    );
  }

  _Register register(
      {required String username,
      String? email,
      String? address,
      String? fullName,
      String? lat,
      String? long,
      num? contact,
      String? birthDate,
      required String password}) {
    return _Register(
      username: username,
      email: email,
      address: address,
      fullName: fullName,
      lat: lat,
      long: long,
      contact: contact,
      birthDate: birthDate,
      password: password,
    );
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $LoadCopyWith<$Res> {
  factory $LoadCopyWith(Load value, $Res Function(Load) then) =
      _$LoadCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoadCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoadCopyWith<$Res> {
  _$LoadCopyWithImpl(Load _value, $Res Function(Load) _then)
      : super(_value, (v) => _then(v as Load));

  @override
  Load get _value => super._value as Load;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(Load(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Load implements Load {
  const _$Load({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.load(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Load &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $LoadCopyWith<Load> get copyWith =>
      _$LoadCopyWithImpl<Load>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return load(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class Load implements LoginEvent {
  const factory Load({required String username, required String password}) =
      _$Load;

  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadCopyWith<Load> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginCompleteCopyWith<$Res> {
  factory _$LoginCompleteCopyWith(
          _LoginComplete value, $Res Function(_LoginComplete) then) =
      __$LoginCompleteCopyWithImpl<$Res>;
  $Res call({Login user});
}

/// @nodoc
class __$LoginCompleteCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginCompleteCopyWith<$Res> {
  __$LoginCompleteCopyWithImpl(
      _LoginComplete _value, $Res Function(_LoginComplete) _then)
      : super(_value, (v) => _then(v as _LoginComplete));

  @override
  _LoginComplete get _value => super._value as _LoginComplete;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_LoginComplete(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }
}

/// @nodoc

class _$_LoginComplete implements _LoginComplete {
  const _$_LoginComplete({required this.user});

  @override
  final Login user;

  @override
  String toString() {
    return 'LoginEvent.loginComplete(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginComplete &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$LoginCompleteCopyWith<_LoginComplete> get copyWith =>
      __$LoginCompleteCopyWithImpl<_LoginComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return loginComplete(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (loginComplete != null) {
      return loginComplete(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return loginComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (loginComplete != null) {
      return loginComplete(this);
    }
    return orElse();
  }
}

abstract class _LoginComplete implements LoginEvent {
  const factory _LoginComplete({required Login user}) = _$_LoginComplete;

  Login get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCompleteCopyWith<_LoginComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LogoutCopyWith<$Res> {
  factory _$LogoutCopyWith(_Logout value, $Res Function(_Logout) then) =
      __$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogoutCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LogoutCopyWith<$Res> {
  __$LogoutCopyWithImpl(_Logout _value, $Res Function(_Logout) _then)
      : super(_value, (v) => _then(v as _Logout));

  @override
  _Logout get _value => super._value as _Logout;
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'LoginEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements LoginEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Error(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginEvent.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginEvent {
  const factory _Error({required String message}) = _$_Error;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String? email,
      String? address,
      String? fullName,
      String? lat,
      String? long,
      num? contact,
      String? birthDate,
      String password});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? username = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? fullName = freezed,
    Object? lat = freezed,
    Object? long = freezed,
    Object? contact = freezed,
    Object? birthDate = freezed,
    Object? password = freezed,
  }) {
    return _then(_Register(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as num?,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(
      {required this.username,
      this.email,
      this.address,
      this.fullName,
      this.lat,
      this.long,
      this.contact,
      this.birthDate,
      required this.password});

  @override
  final String username;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? fullName;
  @override
  final String? lat;
  @override
  final String? long;
  @override
  final num? contact;
  @override
  final String? birthDate;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.register(username: $username, email: $email, address: $address, fullName: $fullName, lat: $lat, long: $long, contact: $contact, birthDate: $birthDate, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Register &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)) &&
            (identical(other.contact, contact) ||
                const DeepCollectionEquality()
                    .equals(other.contact, contact)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long) ^
      const DeepCollectionEquality().hash(contact) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String username, String password) load,
    required TResult Function(Login user) loginComplete,
    required TResult Function() logout,
    required TResult Function(String message) error,
    required TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)
        register,
  }) {
    return register(username, email, address, fullName, lat, long, contact,
        birthDate, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String username, String password)? load,
    TResult Function(Login user)? loginComplete,
    TResult Function()? logout,
    TResult Function(String message)? error,
    TResult Function(
            String username,
            String? email,
            String? address,
            String? fullName,
            String? lat,
            String? long,
            num? contact,
            String? birthDate,
            String password)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(username, email, address, fullName, lat, long, contact,
          birthDate, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Load value) load,
    required TResult Function(_LoginComplete value) loginComplete,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Error value) error,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Load value)? load,
    TResult Function(_LoginComplete value)? loginComplete,
    TResult Function(_Logout value)? logout,
    TResult Function(_Error value)? error,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements LoginEvent {
  const factory _Register(
      {required String username,
      String? email,
      String? address,
      String? fullName,
      String? lat,
      String? long,
      num? contact,
      String? birthDate,
      required String password}) = _$_Register;

  String get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get long => throw _privateConstructorUsedError;
  num? get contact => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Completed completed({Login? user}) {
    return _Completed(
      user: user,
    );
  }

  _LoginError loginError({String? message}) {
    return _LoginError(
      message: message,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Login? user) completed,
    required TResult Function(String? message) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Login? user)? completed,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_LoginError value) loginError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_LoginError value)? loginError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Login? user) completed,
    required TResult Function(String? message) loginError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Login? user)? completed,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_LoginError value) loginError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_LoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends LoginState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Login? user) completed,
    required TResult Function(String? message) loginError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Login? user)? completed,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_LoginError value) loginError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_LoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends LoginState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  $Res call({Login? user});
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Completed(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Login?,
    ));
  }
}

/// @nodoc

class _$_Completed extends _Completed {
  const _$_Completed({this.user}) : super._();

  @override
  final Login? user;

  @override
  String toString() {
    return 'LoginState.completed(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Completed &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Login? user) completed,
    required TResult Function(String? message) loginError,
  }) {
    return completed(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Login? user)? completed,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_LoginError value) loginError,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_LoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed extends LoginState {
  const factory _Completed({Login? user}) = _$_Completed;
  const _Completed._() : super._();

  Login? get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CompletedCopyWith<_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginErrorCopyWith<$Res> {
  factory _$LoginErrorCopyWith(
          _LoginError value, $Res Function(_LoginError) then) =
      __$LoginErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$LoginErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginErrorCopyWith<$Res> {
  __$LoginErrorCopyWithImpl(
      _LoginError _value, $Res Function(_LoginError) _then)
      : super(_value, (v) => _then(v as _LoginError));

  @override
  _LoginError get _value => super._value as _LoginError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoginError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginError extends _LoginError {
  const _$_LoginError({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.loginError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoginErrorCopyWith<_LoginError> get copyWith =>
      __$LoginErrorCopyWithImpl<_LoginError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Login? user) completed,
    required TResult Function(String? message) loginError,
  }) {
    return loginError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Login? user)? completed,
    TResult Function(String? message)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Completed value) completed,
    required TResult Function(_LoginError value) loginError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Completed value)? completed,
    TResult Function(_LoginError value)? loginError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class _LoginError extends LoginState {
  const factory _LoginError({String? message}) = _$_LoginError;
  const _LoginError._() : super._();

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginErrorCopyWith<_LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}
