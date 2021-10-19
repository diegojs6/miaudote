import 'package:flutter/material.dart';

import 'package:miaudote/features/animals/domain/entities/animals.dart';

class AnimailsDetail extends StatefulWidget {
  final Animals? animals;
  const AnimailsDetail({
    Key? key,
    this.animals,
  }) : super(key: key);

  @override
  _AnimailsDetailState createState() => _AnimailsDetailState(animals);
}

class _AnimailsDetailState extends State<AnimailsDetail> {
  final Animals? animals;

  _AnimailsDetailState(this.animals);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 234,
            child: Image.network(
              animals?.imageList?[0] ?? [],
              fit: BoxFit.fill,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
