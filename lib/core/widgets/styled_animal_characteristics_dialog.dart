import 'package:flutter/material.dart';

import '../utils/app_strings.dart';

class StyledAnimalCharacteristicsDialog {
  final BuildContext context;

  StyledAnimalCharacteristicsDialog(this.context);

  void dialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(AppStrings.characteristicsDialogHeader),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(AppStrings.characteristicsDialogTitle),
                  SizedBox(height: 5),
                  Text(AppStrings.characteristicsDialogText2),
                  SizedBox(height: 2),
                  Text(AppStrings.characteristicsDialogText2),
                  SizedBox(height: 2),
                  Text(AppStrings.characteristicsDialogText3),
                  SizedBox(height: 2),
                  Text(AppStrings.characteristicsDialogText4),
                  SizedBox(height: 2),
                  Text(AppStrings.characteristicsDialogText5),
                  SizedBox(height: 2),
                  Text(AppStrings.characteristicsDialogText6),
                  SizedBox(height: 2),
                ],
              ),
            ),
          );
        });
  }
}
