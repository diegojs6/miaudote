import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimalsBloc, AnimalsState>(builder: (context, state) {
      return _homeScreenBuilder(state);
    });
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
        children: [
          Text(
            AppStrings.dogFriends,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.darkest,
            ),
          ),
          SizedBox(width: 15),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    AppStrings.recommended,
                    style: TextStyle(
                      fontFamily: 'Gluten',
                      color: AppColors.purpleDarkest,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
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
