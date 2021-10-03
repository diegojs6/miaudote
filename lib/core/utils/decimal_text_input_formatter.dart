import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DecimalTextInputFormatter extends TextInputFormatter {
  final int decimalDigits;

  DecimalTextInputFormatter(this.decimalDigits);
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final value = newValue.text
        .replaceAll(RegExp(r'[^\d\.,]'), '')
        .replaceFirst(RegExp(r'[\.,]'), 'X')
        .replaceAll(RegExp(r'[\.,]'), '')
        .replaceFirst('X', ',');
    var finalText = value;
    var newSelection = newValue.selection;
    final brPattern = NumberFormat.decimalPattern('pt_BR');
    try {
      var num = brPattern.parse(value).toDouble();
      final decimals = num.remainder(1);
      if (decimals > 0) {
        final regex = '(\\d*,\\d{$decimalDigits})\\d*';
        final valueWithCorrectDecimals = value.replaceAllMapped(RegExp(regex), (m) => m[1]!);
        num = brPattern.parse(valueWithCorrectDecimals).toDouble();

        finalText = brPattern
            .format(NumberFormat.decimalPattern().parse(num.toStringAsFixed(decimalDigits)))
            .replaceAll('.', '');
      }
      newSelection = newValue.selection.copyWith(
        baseOffset: min(finalText.length, finalText.length + 1),
        extentOffset: min(finalText.length, finalText.length + 1),
      );
    } on FormatException {
      if (finalText.isNotEmpty) {
        finalText = oldValue.text;
        newSelection = oldValue.selection;
      }
    }

    return TextEditingValue(
      text: finalText,
      selection: newSelection,
      composing: TextRange.empty,
    );
  }
}