import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:miaudote/core/widgets/styled_app_bar.dart';

import 'package:miaudote/features/animals/domain/entities/animals.dart';

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
        appBar: StyledAppBar.appBar(context, 'Informaçoes de ${animal?.name}', transparentBackground: false),
        body: Column(
          children: [
            //TODO: Dih arrumar esse cara para ser no lugar ai da sua imagem unica,
            CarouselSlider(
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 7),
              ),
              items: imgCarousel(),
            ),
            //TODO: Dih arrumar esse cara para ser no lugar ai da sua imagem unica,
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
