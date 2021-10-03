import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_colors.dart';

class StyledSnackbar {
  final BuildContext context;
  final Widget icon;
  final bool isDefault;
  final int durationSeconds;

  List<BoxShadow> boxShadow = [
    BoxShadow(
      color: AppColors.boxShadowColor1.withOpacity(0.16),
      blurRadius: 7,
      spreadRadius: 0,
      offset: Offset(0, 3),
    )
  ];

  StyledSnackbar(
    this.context, {
    this.durationSeconds = 2,
    this.icon = const Icon(MdiIcons.checkCircleOutline, color: AppColors.neutralDarkest),
    this.isDefault = true,
  });

  void showError(String message, {Function? callBack}) {
    Navigator.of(context, rootNavigator: true)
        .push(
          showFlushbar(
            context: context,
            flushbar: Flushbar(
              margin: EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(8),
              flushbarPosition: FlushbarPosition.TOP,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              backgroundColor: AppColors.lightest,
              icon: Icon(MdiIcons.alertOutline, color: AppColors.error),
              duration: Duration(seconds: durationSeconds),
              boxShadows: boxShadow,
              messageText: Text(
                message,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: AppColors.error,
                ),
              ),
            ),
          ),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callBack != null) {
                callBack();
              }
            },
          ),
        );
  }

  void showSuccess(String message, {Function? callBack}) {
    Navigator.of(context, rootNavigator: true)
        .push(
          showFlushbar(
            context: context,
            flushbar: Flushbar(
              margin: EdgeInsets.all(8),
               borderRadius: BorderRadius.circular(8),
              flushbarPosition: FlushbarPosition.TOP,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              backgroundColor: AppColors.lightest,
              icon: Icon(MdiIcons.checkCircleOutline, color: AppColors.sucess),
              boxShadows: boxShadow,
              duration: Duration(seconds: durationSeconds),
              messageText: Text(
                message,
                style:  GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: AppColors.sucess,
                ),
              ),
            ),
          ),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callBack != null) {
                callBack();
              }
            },
          ),
        );
  }

  void showLoading(String message, {Function? callBack}) {
    Navigator.of(context, rootNavigator: true)
        .push(
          showFlushbar(
            context: context,
            flushbar: Flushbar(
              margin: EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(8),
              flushbarPosition: FlushbarPosition.TOP,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              backgroundColor: AppColors.lightest,
              icon: Icon(MdiIcons.loading, color: AppColors.error),
              duration: Duration(seconds: durationSeconds),
              boxShadows: boxShadow,
              messageText: Text(
                message,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: AppColors.neutralDarkest
                ),
              ),
            ),
          ),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callBack != null) {
                callBack();
              }
            },
          ),
        );
  }

  void showMessage(String message, {Function? callBack}) {
    Navigator.of(context, rootNavigator: true)
        .push(
          showFlushbar(
            context: context,
            flushbar: Flushbar(
              margin: EdgeInsets.all(8),
              borderRadius: BorderRadius.circular(8),
              flushbarPosition: FlushbarPosition.TOP,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              backgroundColor: AppColors.lightest,
              icon: Icon(MdiIcons.checkCircleOutline, color: AppColors.neutralDarkest,),
              duration: Duration(seconds: durationSeconds),
              boxShadows: boxShadow,
              messageText: Text(
                message,
                style:  GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  color: AppColors.neutralDarkest
                ),
              ),
            ),
          ),
        )
        .then(
          (value) => Future.delayed(
            Duration(seconds: durationSeconds),
            () {
              if (callBack != null) {
                callBack();
              }
            },
          ),
        );
  }

}