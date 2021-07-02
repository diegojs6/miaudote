import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String username;

  Login({required this.username});


  @override
  List<Object> get props => [username, ];
}
