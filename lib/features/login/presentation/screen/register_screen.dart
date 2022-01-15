import 'package:flutter/gestures.dart';
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
import '../../../auth/presentation/bloc/auth_state.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_state.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool agree = false;

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
        switch (state.status) {
          case AuthStatus.authenticated:
            Navigator.pushReplacementNamed(context, Routes.homeScreen);
            break;
          default:
            break;
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: AppColors.lightest,
              body: ScrollConfiguration(
                // ignore: deprecated_member_use
                behavior: ScrollBehavior()..buildViewportChrome(context, SizedBox(), AxisDirection.down),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      color: AppColors.lightest,
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 50),
                          Text(AppStrings.registerTitleScreen),
                          SizedBox(height: 100),
                          StyledTextFormField(
                            hintText: AppStrings.hintUsername,
                            controller: _usernameController,
                            prefixIcon: Icon(MdiIcons.accountOutline),
                            validator: (value) =>
                                value!.isEmpty ? AppStrings.registerErrorUsernameEmpty : validateUsername(value),
                          ),
                          SizedBox(height: 10),
                          StyledTextFormField(
                            hintText: AppStrings.hintEmail,
                            controller: _emailController,
                            prefixIcon: Icon(MdiIcons.emailOutline),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) =>
                                value!.isEmpty ? AppStrings.registerErrorEmailEmpty : validateEmail(value),
                          ),
                          SizedBox(height: 10),
                          StyledTextFormField(
                            hintText: AppStrings.hintPassword,
                            controller: _passwordController,
                            prefixIcon: Icon(MdiIcons.lockOutline),
                            validator: (value) => value!.isEmpty && _passwordController.text.length < 6
                                ? AppStrings.registerErrorPasswordEmpty
                                : validatePassword(value),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: agree,
                                onChanged: (value) {
                                  setState(() {
                                    agree = value ?? false;
                                  });
                                },
                                shape: CircleBorder(),
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    text: AppStrings.registerTermsPart1,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.lightGrey),
                                    children: [
                                      TextSpan(
                                        text: AppStrings.registerTermsPart2,
                                        style: GoogleFonts.roboto(
                                            fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryBlue),
                                        recognizer: TapGestureRecognizer()..onTap = () => _showTerms(),
                                      ),
                                      TextSpan(text: AppStrings.registerTermsPart3),
                                      TextSpan(
                                        text: AppStrings.registerTermsPart4,
                                        style: GoogleFonts.roboto(
                                            fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.primaryBlue),
                                        recognizer: TapGestureRecognizer()..onTap = () => _showPolicy(),
                                      ),
                                      TextSpan(text: '.')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          StyledButton(
                            usesInfinityWidth: true,
                            text: AppStrings.registerButton,
                            enabled: state != state.loading(),
                            backgroundColor: AppColors.primaryBlue,
                            textColor: AppColors.lightest,
                            action: () {
                              if (_formKey.currentState?.validate() == true && agree == true) {
                                _loginBloc.add(LoginRegister(
                                  username: _usernameController.text,
                                  password: _passwordController.text,
                                  email: _emailController.text,
                                ));
                              }
                              if (agree == false) {
                                return StyledSnackbar(context).showError(AppStrings.registerErrorTerms);
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.neutralGrey,
                                ),
                              ),
                              Text(
                                AppStrings.registerOr,
                                style: GoogleFonts.poppins(color: AppColors.neutralGrey),
                              ),
                              Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.neutralGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppStrings.registerToLogin,
                                style: GoogleFonts.poppins(color: AppColors.neutralGrey),
                              ),
                              SizedBox(width: 5),
                              GestureDetector(
                                child: Text(
                                  AppStrings.registerToLoginEnter,
                                  style: GoogleFonts.poppins(color: AppColors.primaryBlue),
                                ),
                                onTap: () => Navigator.of(context).pushReplacementNamed(Routes.loginScreen),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String? validateEmail(String value) {
    String pattern = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value))
      return AppStrings.registerErrorEmailInvalid;
    else
      return null;
  }

  String? validateUsername(String value) {
    String pattern = r"[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value))
      return AppStrings.registerErrorUsernameInvalid;
    else
      return null;
  }

  String? validatePassword(String value) {
    String pattern = r"(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value))
      return AppStrings.registerErrorPasswordInvalid;
    else
      return null;
  }

  Future<void> _showTerms() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.registerTermsPart2),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('adicionar termos.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(AppStrings.genericClose),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showPolicy() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(AppStrings.registerTermsPart4),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('adicionar politica.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(AppStrings.genericClose),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
