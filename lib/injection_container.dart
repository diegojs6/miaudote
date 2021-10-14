import 'package:connectivity/connectivity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:miaudote/features/register/data/datasources/register_remote_data_source.dart';
import 'package:miaudote/features/register/data/repositories/register_repository.dart';
import 'package:miaudote/features/register/domain/repositories/i_register_repository.dart';
import 'package:miaudote/features/register/domain/usecases/user_register.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/api/api_interceptor.dart';
import 'core/api/url_creator.dart';
import 'core/device/network_info.dart';
import 'core/device/secure_storage.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/customer/data/datasources/customer_local_data_source.dart';
import 'features/customer/data/datasources/customer_remote_data_source.dart';
import 'features/customer/data/repositories/customer_repository.dart';
import 'features/customer/domain/repositories/I_customer_repository.dart';
import 'features/customer/domain/usecases/delete_customer.dart';
import 'features/customer/domain/usecases/get_customer.dart';
import 'features/login/data/datasources/auth_local_data_source.dart';
import 'features/login/data/datasources/login_remote_data_source.dart';
import 'features/login/data/repositories/login_repository.dart';
import 'features/login/domain/repositories/i_login_repository.dart';
import 'features/login/domain/usecases/get_auth_info.dart';
import 'features/login/domain/usecases/get_current_user.dart';
import 'features/login/domain/usecases/get_login.dart';
import 'features/login/domain/usecases/get_refresh_token.dart';
import 'features/login/domain/usecases/get_sign_out.dart';
import 'features/login/presentation/bloc/login_bloc.dart';

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
  sl.registerLazySingleton<ISecureStorage>(() => SecureStorage(sl()));
  sl.registerLazySingleton(() => const FlutterSecureStorage());
  final sharedPrefs = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPrefs);

  //! Register

  sl.registerLazySingleton<IRegisterRemoteDataSource>(() => RegisterRemoteDataSource(sl(), sl(), sl()));

  sl.registerLazySingleton<IRegisterReposity>(() => RegisterRepository(sl()));

  sl.registerLazySingleton(() => UserRegister(sl()));

  //! Feature login
  //* Bloc
  sl.registerLazySingleton(() => LoginBloc(
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
      ));

  //* Use Case
  sl.registerLazySingleton(() => GetLogin(sl()));
  sl.registerLazySingleton(() => GetCurrentUser(sl()));
  sl.registerLazySingleton(() => GetRefreshToken(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));
  sl.registerLazySingleton(() => GetAuthInfo(sl()));

  //* Repository
  sl.registerLazySingleton<ILoginRepository>(() => LoginRepository(sl(), sl()));

  //*Data Source
  sl.registerLazySingleton<ILoginRemoteDataSource>(() => LoginRemoteDataSource(sl(), sl(), sl()));
  sl.registerLazySingleton<IAuthLocalDataSource>(() => AuthLocalDataSource(sl()));

  //! Feature Auth
  //* Bloc
  sl.registerLazySingleton(() => AuthBloc(
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
      ));

  //! Customer

  //* Use case
  sl.registerLazySingleton(() => GetCustomer(sl()));
  sl.registerLazySingleton(() => DeleteCustomer(sl()));

  //* Repository
  sl.registerLazySingleton<ICustomerRepository>(() => CustomerRepository(sl(), sl()));

  //* Data source
  sl.registerLazySingleton<ICustomerRemoteDataSource>(() => CustomerRemoteDataSource(sl(), sl()));
  sl.registerLazySingleton<ICustomerLocalDataSource>(() => CustomerLocalDataSource(sl()));

  await sl.allReady();
}
