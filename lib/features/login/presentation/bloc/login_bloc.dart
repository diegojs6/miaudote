import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miaudote/features/register/domain/usecases/user_register.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../domain/entities/login.dart';
import '../../domain/usecases/get_auth_info.dart';
import '../../domain/usecases/get_login.dart';
import '../../domain/usecases/get_sign_out.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLogin getLogin;
  final AuthBloc authBloc;
  final SignOut signOut;
  final GetAuthInfo getAuthInfo;
  final UserRegister userRegister;

  LoginBloc(this.getLogin, this.authBloc, this.signOut, this.getAuthInfo, this.userRegister) : super(_Initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(
      started: () async* {
        yield const LoginState.initial();
      },
      load: (username, password) async* {
        yield const LoginState.loading();
        var fold = await getLogin(username, password);
        yield await fold.fold(
          (failure) {
            if (username.isEmpty || password.isEmpty) {
              return LoginState.loginError(message: AppStrings.loginErrorInvalidInput);
            }
            return LoginState.loginError(message: _mapLoginFailureToString(failure));
          },
          (login) {
            authBloc.add(AuthEvent.loggedIn());
            return LoginState.completed(user: login);
          },
        );
      },
      loginComplete: (authInfo) async* {
        yield LoginState.completed(user: authInfo);
        authBloc.add(const AuthEvent.loggedIn());
      },
      logout: () async* {
        yield const LoginState.loading();
        await signOut.call();
        authBloc.add(const AuthEvent.loggedOut());
        yield const LoginState.initial();
      },
      error: (error) async* {
        yield LoginState.loginError(message: error);
      },
      register: (
        username,
        email,
        address,
        fullName,
        lat,
        long,
        contact,
        birthDate,
        password,
      ) async* {
        yield const LoginState.loading();
        var result = await userRegister(
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
        final nextState = result.fold(
          (failure) => LoginState.loginError(message: _mapLoginFailureToString(failure)),
          (register) {
            authBloc.add(const AuthEvent.loggedIn());
            return LoginState.completed(user: register);
          },
        );
        yield nextState;
      },
    );
  }

  String _mapLoginFailureToString(Failure failure) {
    return failure.maybeWhen(
      networkFailure: () => AppStrings.genericErrorNetwork,
      serverFailure: () => AppStrings.genericErrorServer,
      invalidInputFailure: () => AppStrings.loginErrorInvalidInput,
      orElse: () => AppStrings.genericError,
    );
  }
}
