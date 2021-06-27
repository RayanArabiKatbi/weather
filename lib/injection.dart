import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather/core/constants.dart';
import 'package:weather/data/http_helper/http_helper.dart';
import 'package:weather/data/http_helper/iHttp_helper.dart';
import 'package:weather/data/repository/iRepository.dart';
import 'package:weather/data/repository/repository.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_bloc.dart';
import 'package:weather/screens/main_tabs/bloc/main_tabs_state.dart';

GetIt sl = GetIt.instance;

Future initGetIt() async {
  sl.registerLazySingleton(() => Dio(
        BaseOptions(
          baseUrl: BaseUrl,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            "charset": "utf-8",
            "Accept-Charset": "utf-8"
          },
          responseType: ResponseType.plain,
        ),
      ));

  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl()));

  sl.registerFactory(() => MainTabsBloc(MainTabsState.initail()));
}
