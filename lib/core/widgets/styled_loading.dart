import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'styled_loading_progress.dart';

class StyledLoading extends StatelessWidget {
  final String message;
  final Color? color;
  const StyledLoading({
    Key? key,
    required this.message,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        StyledLoadingProgress(),
        SizedBox(
          height: 8,
        ),
        Text(
          message,
          style: GoogleFonts.openSansCondensed(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
