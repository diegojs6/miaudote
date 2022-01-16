import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/device/geolocator_info.dart';
import 'package:miaudote/features/animals/presentation/screen/dog_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../injection_container.dart';
import '../../../ong/presentation/screens/ong_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  final _pageController = PageController();
  final IGeolocatorInfo locator = sl<IGeolocatorInfo>();

  @override
  void initState() {
    locator.handlePermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            DogScreen(),
            Container(color: Colors.red),
            Container(color: Colors.orange),
            OngScreen(),
            Container(color: AppColors.purpleDarkest),
          ],
          onPageChanged: (index) {
            setState(() => _currentPage = index);
          },
        ),
        bottomNavigationBar: BottomBar(
          selectedIndex: _currentPage,
          onTap: (int index) {
            _pageController.jumpToPage(index);
            setState(() => _currentPage = index);
          },
          textStyle: TextStyle(fontFamily: 'Gluten'),
          items: <BottomBarItem>[
            BottomBarItem(
              icon: Icon(MdiIcons.dog),
              title: Text(
                AppStrings.dog,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.bold, color: AppColors.purpleDarkest),
              ),
              activeColor: AppColors.purpleDarkest,
              inactiveColor: AppColors.purpleDarkest,
            ),
            BottomBarItem(
              icon: Icon(MdiIcons.cat),
              title: Text(
                AppStrings.cat,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.bold, color: AppColors.purpleDarkest),
              ),
              activeColor: AppColors.purpleDarkest,
              inactiveColor: AppColors.purpleDarkest,
            ),
            BottomBarItem(
              icon: Icon(MdiIcons.magnify),
              title: Text(
                AppStrings.morePets,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.bold, color: AppColors.purpleDarkest),
              ),
              activeColor: AppColors.purpleDarkest,
              inactiveColor: AppColors.purpleDarkest,
            ),
            BottomBarItem(
              icon: Icon(MdiIcons.handHeart),
              title: Text(
                AppStrings.ong,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.bold, color: AppColors.purpleDarkest),
              ),
              activeColor: AppColors.purpleDarkest,
              inactiveColor: AppColors.purpleDarkest,
            ),
            BottomBarItem(
              icon: Icon(MdiIcons.account),
              title: Text(
                AppStrings.account,
                style: TextStyle(fontFamily: 'Gluten', fontWeight: FontWeight.bold, color: AppColors.purpleDarkest),
              ),
              activeColor: AppColors.purpleDarkest,
              inactiveColor: AppColors.purpleDarkest,
            ),
          ],
        ),
      ),
    );
  }
}
