import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miaudote/features/login/domain/usecases/get_auth_info.dart';
import 'package:miaudote/features/login/domain/usecases/get_current_user.dart';
import 'package:miaudote/features/login/domain/usecases/get_refresh_token.dart';
import 'package:miaudote/features/login/domain/usecases/get_sign_out.dart';

import '../../../customer/domain/entities/customer.dart';
import '../../../customer/domain/usecases/delete_customer.dart';
import '../../../customer/domain/usecases/get_customer.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

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
  ) : super(_Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      started: () async* {
        yield const AuthState.loading();
        yield await _verifyLoginConditions();
      },
      loggedIn: () async* {
        yield const AuthState.loading();
        yield await _verifyLoginConditions();
      },
      registered: () async* {
        yield const AuthState.loading();
        var authInfo = await getAuthInfo();
        await getCurrentUser(forceRefresh: true);
        yield await _setCustomerInfo(authInfo?.objectId);
      },
      loggedOut: () async* {
        await deleteCustomer();
        await signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }

  Future<AuthState> _setCustomerInfo(String? uid) async {
    if (uid != null) {
      var fold = await getCustomer(uid);
      return fold.fold(
        (failure) => const AuthState.unauthenticated(),
        (customer) => AuthState.authenticated(customer),
      );
    } else {
      return const AuthState.unauthenticated();
    }
  }

  Future<AuthState> _verifyLoginConditions() async {
    var authInfo = await getAuthInfo();
    final uid = authInfo?.objectId;
    if (authInfo == null || uid == null) {
      return const AuthState.unauthenticated();
    } else {
      return await _setCustomerInfo(authInfo.objectId);
    }
  }
}
