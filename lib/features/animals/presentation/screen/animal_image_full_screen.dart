import 'package:flutter/material.dart';

import '../../../../core/widgets/styled_app_bar.dart';

class AnimalImageFullScreen extends StatelessWidget {
  final String imgUrl;
  const AnimalImageFullScreen({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StyledAppBar.appBar(context, 'Voltar'),
      body: Image.network(
        imgUrl,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
