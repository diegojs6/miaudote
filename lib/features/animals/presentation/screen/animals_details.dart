import 'package:flutter/material.dart';
import 'package:miaudote/core/utils/app_colors.dart';

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
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              GestureDetector(
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
              Positioned(
                top: 210,
                child: Container(
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
                      Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 24,
                          ),
                          Text(
                            animals?.name ?? '',
                            style: TextStyle(
                              fontFamily: 'Gluten',
                              color: AppColors.darkest,
                              fontWeight: FontWeight.w700,
                              fontSize: 36,
                            ),
                          ),
                          GestureDetector()
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
}
