import 'package:equatable/equatable.dart';
import 'package:miaudote/features/animals/domain/entities/animals.dart';

import '../../domain/entities/ong.dart';

enum OngStatus { loading, ready, error }

class OngState extends Equatable {
  final OngStatus status;
  final List<Ong>? ong;
  final String? message;
  final List<Animals>? animalsList;

  @override
  List<Object?> get props => [status, ong, message];

  const OngState._(this.status, this.ong, this.message, this.animalsList);

  OngState.initial() : this._(OngStatus.loading, [], null, []);

  OngState loading() => OngState._(OngStatus.loading, ong, message, animalsList);

  OngState ready(List<Ong>? ong, List<Animals>? animals) => OngState._(OngStatus.ready, ong, message, animals);

  OngState error(String? error) => OngState._(OngStatus.error, ong, error, animalsList);
}
