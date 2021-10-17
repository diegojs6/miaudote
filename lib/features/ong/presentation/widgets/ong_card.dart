import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/utils/app_colors.dart';

class OngCard extends StatelessWidget {
  final String? ongTitle;
  final String? ongUrl;
  final bool? isVerified;
  final VoidCallback? onTap;
  const OngCard({Key? key, this.ongTitle, this.ongUrl, this.isVerified, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        width: 140,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColors.lightest, boxShadow: [
          BoxShadow(color: AppColors.boxShadowColor1),
        ]),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 133,
              child: Image.network(
                ongUrl ?? '',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Text(
                        ongTitle ?? '',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Gluten',
                          color: AppColors.darkest,
                        ),
                      ),
                    ),
                  ),
                  isVerified ?? false
                      ? Icon(
                          MdiIcons.checkDecagram,
                          color: AppColors.sucess,
                        )
                      : Icon(MdiIcons.checkDecagramOutline),
                  SizedBox(width: 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
