import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/animals/presentation/bloc/animals_bloc.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../features/home/presentation/screen/home_screen.dart';
import '../../features/home/presentation/screen/splash_screen.dart';
import '../../features/login/presentation/bloc/login_bloc.dart';
import '../../features/login/presentation/screen/login_screen.dart';
import '../../features/login/presentation/screen/register_screen.dart';
import '../../features/ong/presentation/bloc/ong_bloc.dart';
import '../../injection_container.dart';
import 'routes.dart';

class AppRouter {
  final _loginBloc = sl<LoginBloc>();
  final _authBloc = sl<AuthBloc>();
  final _ongBLoc = sl<OngBloc>();
  final _animalsBloc = sl<AnimalsBloc>();

  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _authBloc,
            child: SplashScreen(),
          ),
        );
      case Routes.loginScreen:
        return CupertinoPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _authBloc),
              BlocProvider.value(value: _loginBloc),
            ],
            child: LoginScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _ongBLoc..add(LoadOngs())),
              BlocProvider.value(value: _animalsBloc..add(LoadAnimals())),
              BlocProvider.value(value: _authBloc),
            ],
            child: HomeScreen(),
          ),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _authBloc),
              BlocProvider.value(value: _loginBloc),
            ],
            child: RegisterScreen(),
          ),
        );
      // case Routes.accountScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => MultiBlocProvider(
      //       providers: [
      //         BlocProvider.value(value: _authBloc),
      //       ],
      //       child: AccountScreen(),
      //     ),
      //   );
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
