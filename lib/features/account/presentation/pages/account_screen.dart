import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_state.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return Container(
            margin: EdgeInsets.all(32),
            child: Column(
              children: [
                Text('Olá, ${state.customer?.username}'),
              ],
            ),
          );
        }),
      ),
    );
  }
}
