import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:miaudote/core/navigation/routes.dart';
import 'package:miaudote/core/utils/app_strings.dart';
import 'core/navigation/router.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  EquatableConfig.stringify = true;

  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    initializeDateFormatting('pt_BR', null);
    return MaterialApp(
      title: AppStrings.appTitle,
      themeMode: ThemeMode.dark,
      onGenerateRoute: _router.generateRoutes,
      initialRoute: Routes.splashScreen,
      navigatorObservers: [HeroController()],
    );
  }
}
