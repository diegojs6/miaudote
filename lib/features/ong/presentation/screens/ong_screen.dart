import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miaudote/features/ong/presentation/screens/ong_details_screen.dart';

import '../../../../core/utils/app_colors.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            AppStrings.ongVerified,
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.darkest,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.ong?.length,
              itemBuilder: (context, position) {
                var ong = state.ong?[position];
                return ong?.isVerified == true
                    ? OngCard(
                        ongTitle: ong?.name,
                        ongUrl: ong?.ongImage,
                        isVerified: ong?.isVerified,
                        onTap: () {},
                      )
                    : SizedBox();
              },
            ),
          ),
          SizedBox(height: 40),
          Text(
            AppStrings.ongNotVerified,
            style: TextStyle(
              fontFamily: 'Gluten',
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: AppColors.darkest,
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.ong?.length,
              itemBuilder: (context, position) {
                var ong = state.ong?[position];
                return ong?.isVerified == false
                    ? OngCard(
                        ongTitle: ong?.name,
                        ongUrl: ong?.ongImage,
                        isVerified: ong?.isVerified,
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => OngDetailsScreen(
                              ong: ong,
                            ),
                          ),
                        ),
                      )
                    : SizedBox();
              },
            ),
          )
        ],
      ),
    );
  }
}
