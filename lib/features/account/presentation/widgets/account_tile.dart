import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/utils/app_colors.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: AppColors.darkest,
              ),
              SizedBox(width: 16),
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: AppColors.lightGrey,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Icon(
            MdiIcons.chevronRight,
            color: AppColors.darkest,
          )
        ],
      ),
    );
  }
}
