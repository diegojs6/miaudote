import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miaudote/core/utils/app_colors.dart';

import '../../../../core/navigation/routes.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late AuthBloc _authBloc;
  @override
  void initState() {
    _authBloc = BlocProvider.of<AuthBloc>(context);
    Future.delayed(Duration(milliseconds: 1000), () {
      _authBloc.add(AuthEvent.started());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (customer) => Navigator.pushReplacementNamed(
              context,
              Routes.homeScreen,
              arguments: customer,
            ),
            unauthenticated: () => Navigator.pushReplacementNamed(
              context,
              Routes.registerScreen,
            ),
            orElse: () => () {},
          );
        },
        builder: (context, state) {
          return Container(
            color: AppColors.primaryBlue,
          );
        },
      ),
    );
  }
}
