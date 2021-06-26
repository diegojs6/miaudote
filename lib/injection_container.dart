import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

final sl = GetIt.instance;

@override
Future<void> init() async {
  await Parse().initialize(
    '1OKzIuoVO9qiDqRblLdzej0EozjBg8Un7hVQ8SL5',
    'https://parseapi.back4app.com/',
    clientKey: 'EK2NdRHY3ukyvaR1W62d0DI4HLuFShjvUunPH36u',
    autoSendSessionId: true,
    debug: true,
  );

  sl.registerLazySingleton(() => http.Client);
  sl.registerLazySingleton(() => Connectivity());
  await sl.allReady();
}
