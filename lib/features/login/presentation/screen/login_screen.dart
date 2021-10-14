import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/navigation/routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/styled_button.dart';
import '../../../../core/widgets/styled_snackbar.dart';
import '../../../../core/widgets/styled_text_form_field.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _usernameController = TextEditingController();

  var _passwordController = TextEditingController();
  late LoginBloc _loginBloc;
  FocusNode myFocusNode = FocusNode();

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
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (customer) => Navigator.pushReplacementNamed(
            context,
            Routes.homeScreen,
            arguments: customer,
          ),
          orElse: () {},
        );
      },
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
            loginError: (message) => StyledSnackbar(context).showError(message ?? ''),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        AppStrings.loginHeaderApp,
                        style: GoogleFonts.lobster(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 0.5,
                          color: AppColors.darkest,
                        ),
                      ),
                    ),
                    SizedBox(height: 1),
                    Text(
                      AppStrings.appTitle,
                      style: GoogleFonts.lobster(
                        fontWeight: FontWeight.w400,
                        fontSize: 48,
                        letterSpacing: 0.5,
                        color: AppColors.darkest,
                      ),
                    ),
                    SizedBox(height: 40),
                    StyledTextFormField(
                      fillColor: Colors.transparent,
                      controller: _usernameController,
                      prefixIcon: Icon(
                        MdiIcons.email,
                        color: AppColors.neutralGrey,
                      ),
                      labelText: AppStrings.hintEmail,
                      colorLabel: AppColors.neutralGrey,
                    ),
                    SizedBox(height: 8),
                    StyledTextFormField(
                      fillColor: Colors.transparent,
                      controller: _passwordController,
                      prefixIcon: Icon(
                        MdiIcons.lock,
                        color: AppColors.neutralGrey,
                      ),
                      labelText: AppStrings.hintPassword,
                      colorLabel: AppColors.neutralGrey,
                    ),
                    SizedBox(height: 8),
                    StyledButton(
                      text: state == LoginState.loading()
                          ? AppStrings.loginTextButtonLoading
                          : AppStrings.loginTextButton,
                      backgroundColor: AppColors.primaryBlue,
                      usesInfinityWidth: true,
                      action: () async {
                        if (_formKey.currentState?.validate() == true) {
                          _loginBloc
                            ..add(
                              LoginEvent.load(
                                username: _usernameController.text,
                                password: _passwordController.text,
                              ),
                            );
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
