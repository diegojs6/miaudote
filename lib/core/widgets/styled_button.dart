import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miaudote/core/utils/app_colors.dart';

class StyledButton extends StatelessWidget {
  final String? text;
  final Function? action;
  final bool enabled;
  final bool usesInfinityWidth;
  final bool wrapContentWidth;
  final Color textColor;
  final Color backgroundColor;
  final Color outlineColor;

  const StyledButton({
    Key? key,
    this.text,
    this.action,
    this.enabled = true,
    this.usesInfinityWidth = false,
    this.textColor = AppColors.lightest,
    this.backgroundColor = AppColors.neutralGrey,
    this.outlineColor = Colors.transparent,
    this.wrapContentWidth = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: wrapContentWidth
          ? null
          : usesInfinityWidth
              ? double.infinity
              : MediaQuery.of(context).size.height * 1 - 64,
      child: TextButton(
        onPressed: _buttonAction() as void Function()?,
        child: Text(text!),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
          side: BorderSide(color: outlineColor),
          primary: textColor,
          backgroundColor: _buttonAction() != null ? backgroundColor : AppColors.lightest,
          textStyle: GoogleFonts.poppins(
            color: enabled ? textColor : AppColors.darkest,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Function? _buttonAction() {
    return enabled ? action : null;
  }
}