import 'dart:async';

import 'package:bloc/bloc.dart';

import '../../../../core/errors/failuresE.dart';
import '../../domain/usecases/get_animals.dart';
import 'animals_state.dart';

part 'animals_event.dart';

class AnimalsBloc extends Bloc<AnimalsEvent, AnimalsState> {
  final GetAnimals getAnimals;

  AnimalsBloc(this.getAnimals) : super(AnimalsState.inital()) {
    on<LoadAnimals>((event, emit) async {
      emit(state.loading());
      var fold = await getAnimals();
      emit(await fold.fold(
        (failure) => state.error(_mapAnimalsFailureToString(failure)),
        (animals) => state.ready(animals),
      ));
    });
  }

  @override
  void onTransition(Transition<AnimalsEvent, AnimalsState> transition) {
    print('Transition from ${transition.currentState} to ${transition.nextState}');
    super.onTransition(transition);
  }

  @override
  void onEvent(AnimalsEvent event) {
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

  String _mapAnimalsFailureToString(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Erro ao conectar ao servidor';
      default:
        return 'Erro tente novamente';
    }
  }
}
