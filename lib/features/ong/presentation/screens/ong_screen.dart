import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/styled_loading.dart';
import '../bloc/ong_bloc.dart';
import '../bloc/ong_state.dart';
import '../widgets/ong_card.dart';

class OngScreen extends StatefulWidget {
  const OngScreen({Key? key}) : super(key: key);

  @override
  _OngScreenState createState() => _OngScreenState();
}

class _OngScreenState extends State<OngScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OngBloc, OngState>(
        builder: (context, state) {
          return _builder(state);
        },
      ),
    );
  }

  Widget _builder(OngState state) {
    switch (state.status) {
      case OngStatus.ready:
        return _ready(state);
      case OngStatus.loading:
        return StyledLoading(message: AppStrings.ongLoading);
      default:
        return _error(state.message);
    }
  }

  Widget _error(String? msg) {
    return Container(
      child: Center(
        child: Text(msg ?? ''),
      ),
    );
  }

  Widget _ready(OngState state) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20),
          OngCard(
            ongTitle: 'João sem braço',
            ongUrl:
                'https://scontent-gru1-2.xx.fbcdn.net/v/t1.6435-9/243186889_6283836911689621_2359317676413947986_n.png?_nc_cat=103&_nc_rgb565=1&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeENoAGOTw8cfZDCK4kvlvtx4WqC8aYiXtvhaoLxpiJe29PvSpNb1_YFnkobGZsQXE6T1TBL8DwSLaWt9Mkh7t2t&_nc_ohc=bIbjUGAoo5UAX9x8i3F&_nc_ht=scontent-gru1-2.xx&oh=bd2992cfcfeb8458138881af3a918f08&oe=6192AB5D',
            isVerified: true,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
