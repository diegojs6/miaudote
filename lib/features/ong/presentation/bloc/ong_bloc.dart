import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'ong_event.dart';
part 'ong_state.dart';
class OngBloc extends Bloc<OngEvent, OngState> {
  OngBloc() : super(OngInitial());
  @override
  Stream<OngState> mapEventToState(
    OngEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
