import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_colors.dart';
import 'package:miaudote/core/utils/app_strings.dart';
import 'package:miaudote/features/ong/domain/entities/ong.dart';
import 'package:url_launcher/url_launcher.dart';

class OngDetailsScreen extends StatelessWidget {
  final Ong? ong;
  const OngDetailsScreen({Key? key, this.ong}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                ong?.name ?? AppStrings.genericNonInformed,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Text(
              AppStrings.ongInformations,
              style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              AppStrings.ongAddress,
              style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 2),
            Text(
              ong?.address ?? AppStrings.genericNonInformed,
              style: GoogleFonts.inter(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              AppStrings.ongContact,
              style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 2),
            Text(
              ong?.contact ?? AppStrings.genericNonInformed,
              style: GoogleFonts.inter(fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              AppStrings.ongSocialMedia,
              style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ong?.socialMedia?.facebook != null
                    ? GestureDetector(
                        onTap: () => _launchURL(ong?.socialMedia?.facebook ?? ''),
                        child: Icon(MdiIcons.facebook),
                      )
                    : SizedBox(),
                ong?.socialMedia?.instagram != null
                    ? GestureDetector(
                        onTap: () => _launchURL(ong?.socialMedia?.instagram ?? ''),
                        child: Icon(
                          MdiIcons.instagram,
                          color: AppColors.darkest,
                        ),
                      )
                    : SizedBox(),
                ong?.socialMedia?.site != null
                    ? GestureDetector(onTap: () => _launchURL(ong?.socialMedia?.site ?? ''), child: Icon(MdiIcons.web))
                    : SizedBox(),
              ],
            ),
            SizedBox(height: 20),
            Text(
              AppStrings.ongAbout,
              style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.w400, fontSize: 14),
            ),
            SizedBox(height: 5),
            Flexible(
              child: Text(
                ong?.about ?? AppStrings.genericNonInformed,
                style: GoogleFonts.inter(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async => await canLaunch(url)
      ? await launch(
          url,
          forceSafariVC: false,
          forceWebView: false,
        )
      : throw 'Could not launch $url';
}
