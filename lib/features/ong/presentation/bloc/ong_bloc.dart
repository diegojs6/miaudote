import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/get_ongs.dart';
import 'ong_state.dart';

part 'ong_bloc.freezed.dart';
part 'ong_event.dart';

class OngBloc extends Bloc<OngEvent, OngState> {
  final GetOngs getOngs;
  OngBloc(this.getOngs) : super(OngState.initial());

  @override
  void onTransition(Transition<OngEvent, OngState> transition) {
    print('Transition from ${transition.currentState} to ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  void onEvent(OngEvent event) {
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

  @override
  Stream<OngState> mapEventToState(
    OngEvent event,
  ) async* {
    yield* event.when(
      load: () async* {
        yield state.loading();
        var fold = await getOngs();
        yield await fold.fold(
          (failure) => state.error(_mapOngFailureToString(failure)),
          (ong) => state.ready(ong),
        );
      },
    );
  }

  String _mapOngFailureToString(Failure failure) {
    return failure.maybeWhen(
      networkFailure: () => AppStrings.genericErrorNetwork,
      orElse: () => AppStrings.genericError,
    );
  }
}
