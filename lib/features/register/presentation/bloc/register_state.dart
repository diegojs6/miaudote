import 'package:equatable/equatable.dart';
import 'package:miaudote/features/register/domain/entities/register.dart';

enum RegisterStatus {
  loading,
  ready,
  error,
}

class RegisterState extends Equatable {
  final RegisterStatus status;
  final Register? register;
  final String? messageError;

  RegisterState._(this.status, this.register, this.messageError);

  @override
  List<Object?> get props => [
        status,
        register,
        messageError,
      ];

  RegisterState.initial() : this._(RegisterStatus.loading, null, null);

  RegisterState loading() => RegisterState._(
        RegisterStatus.loading,
        register,
        messageError,
      );

  RegisterState ready(Register register) => RegisterState._(
        RegisterStatus.ready,
        register,
        messageError,
      );

  RegisterState error(String msgError) => RegisterState._(RegisterStatus.error, register, msgError);
}
