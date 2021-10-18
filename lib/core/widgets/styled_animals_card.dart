import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/app_colors.dart';

class StyledAnimalsCard extends StatelessWidget {
  final VoidCallback onTap;
  final String animalName;
  final bool isVerified;
  final String animalAge;
  final String animalSex;
  final bool gender;
  final String imgUrl;

  const StyledAnimalsCard({
    Key? key,
    required this.onTap,
    required this.animalName,
    required this.isVerified,
    required this.animalAge,
    required this.animalSex,
    required this.gender,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.dogCardGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      animalName,
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        color: AppColors.darkest,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 16),
                    Icon(
                      isVerified ? MdiIcons.checkDecagram : MdiIcons.checkDecagramOutline,
                      size: 24,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  animalAge,
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    color: AppColors.darkest,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      animalSex,
                      style: TextStyle(
                        fontFamily: 'Gluten',
                        color: AppColors.darkest,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 13),
                    Icon(
                      gender ? MdiIcons.genderMale : MdiIcons.genderFemale,
                      size: 24,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 12,
              ),
              height: 129,
              width: 137,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(imgUrl),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
