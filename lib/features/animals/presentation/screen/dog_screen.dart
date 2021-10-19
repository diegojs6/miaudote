import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/widgets/styled_animals_card.dart';
import 'package:miaudote/features/animals/presentation/screen/animals_details.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/styled_loading.dart';
import '../bloc/animals_bloc.dart';
import '../bloc/animals_state.dart';

class DogScreen extends StatefulWidget {
  @override
  _DogScreenState createState() => _DogScreenState();
}

class _DogScreenState extends State<DogScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ScrollConfiguration(
          behavior: ScrollBehavior()
            ..buildOverscrollIndicator(
              context,
              SizedBox(),
              ScrollableDetails(
                direction: AxisDirection.down,
                controller: _scrollController,
              ),
            ),
          child: SingleChildScrollView(
            child: BlocBuilder<AnimalsBloc, AnimalsState>(builder: (context, state) {
              return _homeScreenBuilder(state);
            }),
          ),
        ),
      ),
    );
  }

  Widget _homeScreenBuilder(AnimalsState state) {
    switch (state.status) {
      case AnimalsStatus.ready:
        return _ready(state);
      case AnimalsStatus.error:
        return _error(state.messageError);
      default:
        return StyledLoading(
          message: AppStrings.dogsLoading,
        );
    }
  }

  Widget _ready(AnimalsState state) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            AppStrings.dogFriends,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.darkest,
            ),
          ),
          SizedBox(height: 20),
          Text(
            AppStrings.recommended,
            style: TextStyle(
              fontFamily: 'Gluten',
              color: AppColors.purpleDarkest,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 1),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                AppStrings.viewMore,
                style: TextStyle(
                  fontFamily: 'Gluten',
                  color: AppColors.primaryBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 400,
            width: 300,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.getAnimals?.length,
              itemBuilder: (context, position) {
                var animals = state.getAnimals?[position];
                return StyledAnimalsCard(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => AnimailsDetail(
                        animal: animals,
                      ),
                    ),
                  ),
                  animalName: animals?.name,
                  isVerified: animals?.verify,
                  animalAge: animals?.age,
                  gender: animals?.gender,
                  imgUrl: animals?.imageList?[0],
                );
              },
            ),
          ),
          SizedBox(height: 150),
          GestureDetector(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.viewMoreDog,
                  style: TextStyle(
                    fontFamily: 'Gluten',
                    color: AppColors.purpleDarkest,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                Icon(
                  MdiIcons.arrowRight,
                  color: AppColors.purpleDarkest,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _error(String? msg) {
    return Container(
      child: Center(
        child: Text(msg ?? ''),
      ),
    );
  }
}
