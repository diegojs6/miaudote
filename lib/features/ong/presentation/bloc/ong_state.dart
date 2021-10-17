import 'package:equatable/equatable.dart';

import '../../domain/entities/ong.dart';

enum OngStatus { loading, ready, error }

class OngState extends Equatable {
  final OngStatus status;
  final List<Ong>? ong;
  final String? message;

  @override
  List<Object?> get props => [status, ong, message];

  const OngState._(this.status, this.ong, this.message);

  OngState.initial() : this._(OngStatus.loading, [], null);

  OngState loading() => OngState._(OngStatus.loading, ong, message);

  OngState ready(List<Ong>? ong) => OngState._(OngStatus.ready, ong, message);

  OngState error(String? error) => OngState._(OngStatus.error, ong, error);
}
