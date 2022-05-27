import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:miaudote/core/utils/app_strings.dart';
import 'package:miaudote/features/account/presentation/widgets/account_tile.dart';

import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../../../auth/presentation/bloc/auth_state.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          return Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      AppStrings.accountHello,
                      style: GoogleFonts.inter(fontSize: 36),
                    ),
                    Text(
                      state.customer?.username ?? 'Usuario',
                      style: GoogleFonts.inter(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                AccountTile(
                  title: AppStrings.accountTileTitle,
                  onTap: () {},
                  icon: MdiIcons.account,
                ),
                SizedBox(height: 10),
                Divider(),
                SizedBox(height: 30),
                AccountTile(
                  title: AppStrings.accountOngTitle,
                  onTap: () {},
                  icon: MdiIcons.handHeart,
                ),
                SizedBox(height: 10),
                Divider(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
