import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miaudote/features/login/presentation/bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _usernameController = TextEditingController();

  var _passwordController = TextEditingController();
  late LoginBloc _loginBloc;

  @override
  void initState() {
    _usernameController.clear();
    _passwordController.clear();
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: _usernameController,
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _passwordController,
              ),
              SizedBox(height: 8),
              TextButton(
                  onPressed: () {
                    _loginBloc
                      ..add(
                        LoginEvent.load(
                          username: _usernameController.text,
                          password: _passwordController.text,
                        ),
                      );
                  },
                  child: Text('data'))
            ],
          ),
        ),
      ),
    );
  }
}
