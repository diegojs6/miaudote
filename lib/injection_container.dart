import 'package:connectivity/connectivity.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:miaudote/features/login/data/datasources/login_remote_data_source.dart';
import 'package:miaudote/features/login/data/repositories/login_repository.dart';
import 'package:miaudote/features/login/domain/repositories/i_login_repository.dart';
import 'package:miaudote/features/login/domain/usecases/get_login.dart';
import 'package:miaudote/features/login/presentation/bloc/login_bloc.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'core/api/api_interceptor.dart';
import 'core/api/url_creator.dart';
import 'core/device/network_info.dart';

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
  sl.registerLazySingleton<INetworkInfo>(() => NetworkInfo(sl()));
  sl.registerLazySingleton<IUrlCreator>(() => UrlCreator());
  sl.registerLazySingleton<IHttpClient>(() => HttpClient());

  //! Feature login
  //* Bloc
  sl.registerLazySingleton(() => LoginBloc(sl()));

  //* Use Case
  sl.registerLazySingleton(() => GetLogin(sl()));

  //* Repository
  sl.registerLazySingleton<ILoginRepository>(() => LoginRepository(sl()));

  //*Data Source
  sl.registerLazySingleton<ILoginRemoteDataSource>(
      () => LoginRemoteDataSource(sl(), sl(), sl()));

  await sl.allReady();
}
