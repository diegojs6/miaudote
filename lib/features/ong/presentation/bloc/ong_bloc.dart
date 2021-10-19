import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:miaudote/features/animals/domain/usecases/get_animals.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/get_ongs.dart';
import 'ong_state.dart';

part 'ong_bloc.freezed.dart';
part 'ong_event.dart';

class OngBloc extends Bloc<OngEvent, OngState> {
  final GetOngs getOngs;
  final GetAnimals getAnimals;
  OngBloc(this.getOngs, this.getAnimals) : super(OngState.initial());

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
          (ong) async {
            var fold = await getAnimals();
            var nextState = fold.fold(
              (failure) => state.error(_mapOngFailureToString(failure)),
              (animals) => state.ready(ong, animals),
            );
            return nextState;
          },
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
