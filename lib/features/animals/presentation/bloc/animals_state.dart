import 'package:equatable/equatable.dart';

import '../../domain/entities/animals.dart';

enum AnimalsStatus { loading, ready, error }

class AnimalsState extends Equatable {
  final AnimalsStatus status;
  final Animals? getAnimals;
  final String? messageError;

  AnimalsState._(this.status, this.getAnimals, this.messageError);

  @override
  List<Object?> get props => [status, getAnimals, messageError];

  AnimalsState.inital() : this._(AnimalsStatus.loading, null, null);

  AnimalsState loading() => AnimalsState._(AnimalsStatus.loading, getAnimals, messageError);

  AnimalsState ready(Animals animals) => AnimalsState._(AnimalsStatus.ready, animals, messageError);

  AnimalsState error(String? msgError) => AnimalsState._(AnimalsStatus.error, getAnimals, msgError);
}
