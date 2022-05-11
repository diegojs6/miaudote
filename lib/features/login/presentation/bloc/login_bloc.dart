import 'package:bloc/bloc.dart';

import '../../../../core/errors/failuresE.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../customer/domain/entities/customer.dart';
import '../../domain/usecases/get_auth_info.dart';
import '../../domain/usecases/get_login.dart';
import '../../domain/usecases/get_sign_out.dart';
import '../../domain/usecases/user_register.dart';
import 'login_state.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GetLogin getLogin;
  final AuthBloc authBloc;
  final SignOut signOut;
  final GetAuthInfo getAuthInfo;
  final UserRegister userRegister;

  LoginBloc(this.getLogin, this.authBloc, this.signOut, this.getAuthInfo, this.userRegister)
      : super(LoginState.initial()) {
    on<LoginStarted>((event, emit) async {
      emit(LoginState.initial());
    });

    on<LoginLoad>((event, emit) async {
      emit(state.loading());
      var fold = await getLogin(event.username, event.password);
      emit(await fold.fold(
        (failure) {
          if (event.username.isEmpty || event.password.isEmpty) {
            return state.loginError(AppStrings.loginErrorInvalidInput);
          }
          return state.loginError(_mapLoginFailureToString(failure));
        },
        (login) {
          authBloc.add(LoggedIn());
          return state.completed(login);
        },
      ));
    });

    on<LoginComplete>((event, emit) async {
      emit(state.completed(event.user));
      authBloc.add(LoggedIn());
    });

    on<LoginLogout>((event, emit) async {
      emit(state.loading());
      await signOut.call();
      authBloc.add(LoggedOut());
      emit(LoginState.initial());
    });

    on<LoginError>((event, emit) async {
      emit(state.loginError(event.message));
    });

    on<LoginRegister>((event, emit) async {
      emit(state.loading());
      var result = await userRegister(
          username: event.username,
          email: event.email,
          address: event.address,
          fullName: event.fullName,
          lat: event.lat,
          long: event.long,
          contact: event.contact,
          birthDate: event.birthDate,
          password: event.password);
      emit(result.fold(
        (failure) => state.loginError(_mapLoginFailureToString(failure)),
        (register) {
          authBloc.add(LoggedIn());
          return state.completed(register);
        },
      ));
    });
  }

  String _mapLoginFailureToString(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Erro ao conectar ao servidor';
      default:
        return 'Erro tente novamente';
    }
  }
}
