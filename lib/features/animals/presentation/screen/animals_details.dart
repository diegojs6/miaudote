import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_strings.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/styled_app_bar.dart';
import '../../domain/entities/animals.dart';
import '../widgets/details_card.dart';

class AnimailsDetail extends StatefulWidget {
  final Animals? animal;
  const AnimailsDetail({
    Key? key,
    this.animal,
  }) : super(key: key);

  @override
  _AnimailsDetailState createState() => _AnimailsDetailState(animal);
}

class _AnimailsDetailState extends State<AnimailsDetail> {
  final Animals? animal;

  _AnimailsDetailState(this.animal);
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      appBar: StyledAppBar.appBar(context, 'Informações sobre ${animal?.name}', isDark: true),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 7),
              ),
              items: imgCarousel(),
            ),
            Positioned(
              top: 210,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: AppColors.lightest,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              animal?.name ?? '',
                              style: TextStyle(
                                fontFamily: 'Gluten',
                                color: AppColors.darkest,
                                fontWeight: FontWeight.w700,
                                fontSize: 36,
                              ),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: Icon(
                                MdiIcons.cardsHeart,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(animal?.verify ?? false
                                    ? AppStrings.animalIsVerified
                                    : AppStrings.animalIsNotVerified),
                                SizedBox(width: 5),
                                Icon(
                                  animal?.verify ?? false ? MdiIcons.checkDecagram : MdiIcons.checkDecagramOutline,
                                  size: 22,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          animal?.gender ?? '',
                          style: TextStyle(
                              fontFamily: 'Gluten',
                              color: AppColors.darkest,
                              fontWeight: FontWeight.w400,
                              fontSize: 24),
                        ),
                        SizedBox(width: 13),
                        Icon(
                          animal?.gender == 'male' ? MdiIcons.genderMale : MdiIcons.genderFemale,
                        ),
                        SizedBox(width: 9),
                        Icon(MdiIcons.circleSmall, size: 24),
                        SizedBox(width: 9),
                        Text(
                          animal?.age ?? '',
                          style: TextStyle(
                            fontFamily: 'Gluten',
                            color: AppColors.darkest,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.animalDetailsCharacteristics,
                          style: TextStyle(fontFamily: 'Gluten', fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.darkest),
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '?',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: animal?.characteristics?.length,
                        itemBuilder: (context, position) {
                          var charac = animal?.characteristics?[position];
                          return DetailsCard(characteristics: charac);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //TODO: retornar depois para ser um gesture detector que vai abrir a img em tela cheia
  List<Widget>? imgCarousel() => animal?.imageList
      ?.map((e) => Container(
            child: Container(
              margin: EdgeInsets.all(2.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(e, fit: BoxFit.cover, width: 1000.0),
              ),
            ),
          ))
      .toList();
}
