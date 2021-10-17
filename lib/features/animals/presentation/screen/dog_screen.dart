import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miaudote/core/utils/app_colors.dart';
import 'package:miaudote/core/widgets/styled_animals_card.dart';
import 'package:miaudote/features/animals/presentation/bloc/animals_bloc.dart';
import 'package:miaudote/features/animals/presentation/bloc/animals_state.dart';

class DogScreen extends StatefulWidget {
  @override
  _DogScreenState createState() => _DogScreenState();
}

class _DogScreenState extends State<DogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            StyledAnimalsCard(
              onTap: () {},
              animalName: 'rodisvaldo',
              isVerified: false,
              animalAge: '12',
              animalSex: 'male',
              gender: false,
              imgUrl:
                  'https://ggsc.s3.amazonaws.com/images/uploads/The_Science-Backed_Benefits_of_Being_a_Dog_Owner.jpg',
            )
          ],
        ),
      ),
    );
  }

  // Widget _homeScreenBuilder(AnimalsState state) {
  //   switch (state.status) {
  //     case AnimalsStatus.ready:
  //       return _ready();
  //     case AnimalsStatus.error:
  //       return _error();
  //     default:
  //       return _loading();
  //   }
  // }

  // Widget _ready(AnimalsState state) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 24),
  //     child: Column(
  //       children: [

  //       ],
  //     ),
  //   );
  // }
}
