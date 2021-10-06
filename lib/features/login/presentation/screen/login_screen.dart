import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/navigation/routes.dart';
import 'package:miaudote/core/utils/app_colors.dart';
import 'package:miaudote/core/utils/app_strings.dart';
import 'package:miaudote/core/widgets/styled_button.dart';
import 'package:miaudote/core/widgets/styled_snackbar.dart';
import 'package:miaudote/core/widgets/styled_text_form_field.dart';
import 'package:miaudote/features/login/presentation/bloc/login_bloc.dart';
import 'package:miaudote/features/login/presentation/bloc/login_state.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        switch (state.status) {
          case LoginStatus.error:
            return StyledSnackbar(context).showError(state.messageError ?? '');
          case LoginStatus.ready:
            return StyledSnackbar(context).showMessage(AppStrings.loginSucess);
          default:
            break;
        }
      },
      builder: (context, state) {
        return _loginBuilder(state);
      },
    );
  }

  Widget _loginBuilder(LoginState state) {
    switch (state.status) {
      case LoginStatus.loading:
      case LoginStatus.error:
      case LoginStatus.ready:
        return _loginLoading(state);

      default:
        return Container();
    }
  }

  Widget _loginLoading(LoginState state) {
    return SafeArea(
      child: Scaffold(
        body: Container(
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
                text: AppStrings.loginTextButton,
                backgroundColor: AppColors.primaryBlue,
                usesInfinityWidth: true,
                action: () async {
                  _loginBloc
                    ..add(
                      LoginEvent.load(
                        username: _usernameController.text,
                        password: _passwordController.text,
                      ),
                    );
                  if (state.getLogin?.username != null && state.status == LoginStatus.ready) {
                    _usernameController.clear();
                    _passwordController.clear();
                    await Navigator.of(context).pushNamed(Routes.homePage);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
