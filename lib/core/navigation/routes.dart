import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
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
