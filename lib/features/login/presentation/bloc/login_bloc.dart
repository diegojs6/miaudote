import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miaudote/core/errors/failures.dart';
import 'package:miaudote/core/utils/app_strings.dart';

import '../../domain/usecases/get_login.dart';
import 'login_state.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLogin getLogin;

  LoginBloc(this.getLogin) : super(const LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(load: (username, password) async* {
      yield state.loading();
      var fold = await getLogin(username, password);
      yield await fold.fold(
        (failure) {
          if (username.isEmpty || password.isEmpty) {
            return state.error(AppStrings.loginErrorInvalidInput);
          }
          return state.error(_mapLoginFailureToString(failure));
        },
        (login) => state.ready(login),
      );
    });
  }

  String _mapLoginFailureToString(Failure failure) {
    return failure.maybeWhen(
      networkFailure: () => AppStrings.loginErrorNetwork,
      serverFailure: () => AppStrings.loginErrorServer,
      invalidInputFailure: () => AppStrings.loginErrorInvalidInput,
      orElse: () => AppStrings.loginError,
    );
  }
}
