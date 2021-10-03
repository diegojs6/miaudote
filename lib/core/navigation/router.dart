import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miaudote/core/navigation/routes.dart';
import 'package:miaudote/features/home/presentation/screen/home_screen.dart';
import 'package:miaudote/features/login/presentation/bloc/login_bloc.dart';
import 'package:miaudote/features/login/presentation/screen/login_screen.dart';

import '../../injection_container.dart';

class AppRouter {
  final _loginBloc = sl<LoginBloc>();
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginPage:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider.value(
            value: _loginBloc,
            child: LoginScreen(),
          ),
        );
        case Routes.homePage:
          return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: SafeArea(
              child: Center(
                child: Text('Erro!'),
              ),
            ),
          ),
        );
    }
  }
}
