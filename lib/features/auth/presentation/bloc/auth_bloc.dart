import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../customer/domain/usecases/delete_customer.dart';
import '../../../customer/domain/usecases/get_customer.dart';
import '../../../login/domain/usecases/get_auth_info.dart';
import '../../../login/domain/usecases/get_current_user.dart';
import '../../../login/domain/usecases/get_refresh_token.dart';
import '../../../login/domain/usecases/get_sign_out.dart';
import 'auth_state.dart';

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetCustomer getCustomer;
  final DeleteCustomer deleteCustomer;
  final GetCurrentUser getCurrentUser;
  final GetRefreshToken getRefreshToken;
  final SignOut signOut;
  final GetAuthInfo getAuthInfo;

  AuthBloc(
    this.getCustomer,
    this.deleteCustomer,
    this.getCurrentUser,
    this.getRefreshToken,
    this.signOut,
    this.getAuthInfo,
  ) : super(AuthState.initial()) {
    on<Started>((event, emit) async {
      emit(state.loading());
      emit(await _verifyLoginConditions());
    });

    on<LoggedIn>((event, emit) async {
      emit(state.loading());
      emit(await _verifyLoginConditions());
    });

    on<Registered>((event, emit) async {
      emit(state.loading());
      var authInfo = await getAuthInfo();
      await getCurrentUser(forceRefresh: true);
      emit(await _setCustomerInfo(authInfo?.objectId));
    });

    on<LoggedOut>((event, emit) async {
      await deleteCustomer();
      await signOut();
      emit(state.unauthenticated());
    });
  }

  @override
  void onTransition(Transition<AuthEvent, AuthState> transition) {
    print('Transition from ${transition.currentState} to ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  void onEvent(AuthEvent event) {
    print(event);
    super.onEvent(event);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print(error);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() async {
    print('Login bloc closed');
    super.close();
  }

  Future<AuthState> _setCustomerInfo(String? uid) async {
    if (uid != null) {
      var fold = await getCustomer(uid);
      return fold.fold(
        (failure) => state.unauthenticated(),
        (customer) => state.authenticated(customer),
      );
    } else {
      return state.unauthenticated();
    }
  }

  Future<AuthState> _verifyLoginConditions() async {
    var authInfo = await getAuthInfo();
    final uid = authInfo?.objectId;
    if (authInfo == null || uid == null) {
      return state.unauthenticated();
    } else {
      return await _setCustomerInfo(authInfo.objectId);
    }
  }
}
