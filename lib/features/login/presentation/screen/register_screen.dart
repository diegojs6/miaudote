import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/navigation/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/styled_button.dart';
import '../../../../core/widgets/styled_text_form_field.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../bloc/login_bloc.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  late LoginBloc _loginBloc;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (customer) => Navigator.pushReplacementNamed(context, Routes.homeScreen),
          orElse: () {},
        );
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Form(
                key: _formKey,
                child: Container(
                  color: AppColors.lightest,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Text('Crie sua conta'),
                      SizedBox(height: 200),
                      StyledTextFormField(
                        hintText: 'Username',
                        controller: _usernameController,
                      ),
                      SizedBox(height: 10),
                      StyledTextFormField(
                        hintText: 'Email',
                        controller: _emailController,
                      ),
                      SizedBox(height: 10),
                      StyledTextFormField(
                        hintText: 'Senha',
                        controller: _passwordController,
                      ),
                      SizedBox(height: 10),
                      StyledButton(
                        usesInfinityWidth: true,
                        text: 'Criar Conta',
                        enabled: state != LoginState.loading(),
                        action: () {
                          if (_formKey.currentState?.validate() == true) {
                            _loginBloc.add(LoginEvent.register(
                              username: _usernameController.text,
                              password: _passwordController.text,
                              email: _emailController.text,
                            ));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
