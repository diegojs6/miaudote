import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_colors.dart';
import 'package:miaudote/core/utils/app_strings.dart';
import 'package:miaudote/features/animals/domain/entities/characteristics.dart';

class DetailsCard extends StatelessWidget {
  final IconData? icon;
  final Characteristics? characteristics;
  const DetailsCard({Key? key, this.icon, this.characteristics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      padding: EdgeInsets.only(top: 16, left: 14),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: _switchColor().withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            _switchIcon(),
            color: _switchColor(),
            size: 30,
          ),
          SizedBox(height: 5),
          Text(
            _switchTitle(),
            style: GoogleFonts.robotoSlab(
              fontSize: 10,
              color: _switchColor().withOpacity(0.5),
            ),
          ),
          SizedBox(height: 2),
          Text(
            _switchDescription(),
            style: GoogleFonts.robotoSlab(
              fontSize: 12,
              color: _switchColor(),
            ),
          )
        ],
      ),
    );
  }

  Color _switchColor() {
    if (characteristics?.sociable != null) {
      return AppColors.sociableColor;
    } else if (characteristics?.bark != null) {
      return AppColors.barkColor;
    } else if (characteristics?.size != null) {
      return AppColors.sizeColor;
    } else if (characteristics?.castrated != null) {
      return AppColors.castratedColor;
    } else if (characteristics?.conduct != null) {
      return AppColors.conductColor;
    } else if (characteristics?.vaccinated != null) {
      return AppColors.vaccinatedColor;
    } else {
      return AppColors.darkest;
    }
  }

  String _switchTitle() {
    if (characteristics?.sociable != null) {
      return AppStrings.detailsCardSociable;
    } else if (characteristics?.bark != null) {
      return AppStrings.detailsCardBark;
    } else if (characteristics?.size != null) {
      return AppStrings.detailsCardSize;
    } else if (characteristics?.castrated != null) {
      return AppStrings.detailsCardCastrated;
    } else if (characteristics?.conduct != null) {
      return AppStrings.detailsCardConduct;
    } else if (characteristics?.vaccinated != null) {
      return AppStrings.detailsCardVaccinated;
    } else {
      return '';
    }
  }

  String _switchDescription() {
    if (characteristics?.sociable != null) {
      return characteristics?.sociable == true
          ? AppStrings.detailsCardSociableType1
          : AppStrings.detailsCardSociableType2;
    } else if (characteristics?.bark != null) {
      if (characteristics?.bark == 1) return AppStrings.detailsCardBarkType1;
      if (characteristics?.bark == 2) return AppStrings.detailsCardBarkType2;
      if (characteristics?.bark == 3) return AppStrings.detailsCardBarkType3;
      return AppStrings.detailsCardNonInformed;
    } else if (characteristics?.size != null) {
      return characteristics?.size ?? '';
    } else if (characteristics?.castrated != null) {
      return characteristics?.castrated == true
          ? AppStrings.detailsCardCastratedType1
          : AppStrings.detailsCardCastratedType2;
    } else if (characteristics?.conduct != null) {
      return AppStrings.detailsCardConduct;
    } else if (characteristics?.vaccinated != null) {
      return characteristics?.vaccinated == true
          ? AppStrings.detailsCardVaccinatedType1
          : AppStrings.detailsCardVaccinatedType2;
    } else {
      return AppStrings.detailsCardNonInformed;
    }
  }

  IconData _switchIcon() {
    if (characteristics?.sociable != null) {
      return MdiIcons.heart;
    } else if (characteristics?.bark != null) {
      return MdiIcons.volumeMedium;
    } else if (characteristics?.size != null) {
      return MdiIcons.chevronTripleRight;
    } else if (characteristics?.castrated != null) {
      return MdiIcons.scissorsCutting;
    } else if (characteristics?.conduct != null) {
      return MdiIcons.moonWaningGibbous;
    } else if (characteristics?.vaccinated != null) {
      return MdiIcons.needle;
    } else {
      return MdiIcons.dog;
    }
  }
}
