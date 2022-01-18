import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/device/geolocator_info.dart';
import 'package:miaudote/core/widgets/styled_button.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/styled_animal_characteristics_dialog.dart';
import '../../../../core/widgets/styled_app_bar.dart';
import '../../../../injection_container.dart';
import '../../domain/entities/animals.dart';
import '../widgets/details_card.dart';
import 'animal_image_full_screen.dart';

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
  final IGeolocatorInfo locator = sl<IGeolocatorInfo>();
  final Distance distance = Distance();

  _AnimailsDetailState(this.animal);
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Scaffold(
      appBar: StyledAppBar.appBar(context, 'Informações sobre ${animal?.name}', isDark: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
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
                            animal?.gender == 'male' ? AppStrings.animalsMale : AppStrings.animalsFemale,
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            animal?.gender == 'male' ? MdiIcons.genderMale : MdiIcons.genderFemale,
                          ),
                          SizedBox(width: 5),
                          Icon(MdiIcons.circleSmall, size: 20),
                          SizedBox(width: 5),
                          Text(
                            animal?.age ?? '',
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              color: AppColors.darkest,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 9),
                          Icon(MdiIcons.mapMarker),
                          SizedBox(width: 3),
                          FutureBuilder(
                            future: _calculateKm(),
                            builder: (context, AsyncSnapshot<String> snapshot) {
                              return Text(
                                '${snapshot.data ?? ''}',
                                style: TextStyle(fontFamily: 'Gluten', fontSize: 20),
                              );
                            },
                          )
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
                            onTap: () => StyledAnimalCharacteristicsDialog(context).dialog(),
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
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppStrings.ongAbout,
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Text(
                            animal?.description ?? "",
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      StyledButton(
                        text: AppStrings.animalsDetails,
                        textColor: AppColors.lightest,
                        outlineColor: AppColors.purpleDarkest,
                        backgroundColor: AppColors.purpleDarkest,
                        action: () {},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _calculateKm() async {
    var location = await locator.currentPosition();
    final double km = distance.as(
      LengthUnit.Kilometer,
      new LatLng(location.latitude, location.longitude),
      new LatLng(animal?.lat?.toDouble() ?? 0.0, animal?.long?.toDouble() ?? 0.0),
    );
    if (km == 0.0) {
      final double meter = distance.as(
        LengthUnit.Meter,
        new LatLng(location.latitude, location.longitude),
        new LatLng(animal?.lat?.toDouble() ?? 0.0, animal?.long?.toDouble() ?? 0.0),
      );
      return '${meter.toString().substring(0, 3)} M';
    }
    return '$km KM';
  }

  Future<double> getLatitude() async {
    var location = await locator.currentPosition();
    return location.latitude;
  }

  Future<double> getLongitude() async {
    var location = await locator.currentPosition();
    return location.longitude;
  }

  List<Widget>? imgCarousel() => animal?.imageList
      ?.map((e) => GestureDetector(
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AnimalImageFullScreen(imgUrl: e))),
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