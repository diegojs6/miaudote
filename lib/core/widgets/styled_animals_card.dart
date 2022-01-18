import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_strings.dart';

import '../utils/app_colors.dart';

class StyledAnimalsCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String? animalName;
  final bool? isVerified;
  final String? animalAge;
  final String? gender;
  final String? imgUrl;

  const StyledAnimalsCard({
    Key? key,
    this.onTap,
    this.animalName,
    this.isVerified,
    this.animalAge,
    this.gender,
    this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.dogCardGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        animalName ?? '',
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          color: AppColors.darkest,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      isVerified ?? false
                          ? Icon(
                              MdiIcons.checkDecagram,
                              color: AppColors.success,
                              size: 24,
                            )
                          : Icon(MdiIcons.checkDecagramOutline, size: 24),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    animalAge ?? '',
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
                        gender == 'male' ? AppStrings.animalsMale : AppStrings.animalsFemale,
                        style: TextStyle(
                          fontFamily: 'Gluten',
                          color: AppColors.darkest,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Icon(
                        gender == 'male' ? MdiIcons.genderMale : MdiIcons.genderFemale,
                        size: 24,
                      ),
                    ],
                  ),
                ],
              ),
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
                  image: NetworkImage(imgUrl ?? ''),
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
