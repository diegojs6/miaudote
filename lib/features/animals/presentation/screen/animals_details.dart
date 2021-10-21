import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:miaudote/core/widgets/styled_app_bar.dart';
import 'package:miaudote/core/utils/app_colors.dart';

import 'package:miaudote/features/animals/domain/entities/animals.dart';
import 'package:miaudote/features/animals/presentation/widgets/details_card.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: StyledAppBar.appBar(context, ''),
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
                        ],
                      ),
                      Row(
                        children: [
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: animal?.characteristics?.length,
                            itemBuilder: (context, position) {
                              var characteristic = animal?.characteristics?[position];
                              return DetailsCard(
                                characteristics: characteristic,
                              );
                            },
                          ),
                        ],
                      ),
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
