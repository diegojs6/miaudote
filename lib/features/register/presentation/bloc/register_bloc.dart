import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/usecases/user_register.dart';
import 'register_state.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final UserRegister? userRegister;

  RegisterBloc(this.userRegister) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.when(load: (username, email, address, fullName, lat, long, contact, birthDate, password) async* {
      yield state.loading();
      var fold = await userRegister(
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
      yield await fold.fold(
        (failure) {},
      );
    });
  }
}
