import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigation/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_state.dart';

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
      _authBloc.add(Started());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state.status) {
            case AuthStatus.authenticated:
              Navigator.pushReplacementNamed(
                context,
                Routes.homeScreen,
                arguments: state.customer,
              );
              break;
            case AuthStatus.unauthenticated:
              Navigator.pushReplacementNamed(
                context,
                Routes.registerScreen,
              );
              break;
            default:
              break;
          }
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
