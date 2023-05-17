// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'model/data/remote/dio/dio_remote.dart' as _i6;
import 'model/data_module.dart' as _i7;
import 'model/services/dio_services.dart' as _i4;
import 'model/services/retrofit_services.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  gh.factory<_i3.Dio>(() => dataModule.dio(
        get<String>(),
        get<Map<String, dynamic>>(),
      ));
  gh.factory<Map<String, dynamic>>(
    () => dataModule.conCungheaders1,
    instanceName: 'concungHeaders1',
  );
  gh.factory<Map<String, dynamic>>(
    () => dataModule.conCungheaders2,
    instanceName: 'concungHeaders2',
  );
  gh.factory<String>(
    () => dataModule.baseURL1,
    instanceName: 'concungBaseURL1',
  );
  gh.factory<String>(
    () => dataModule.baseURL2,
    instanceName: 'concungBaseURL2',
  );
  gh.factory<String>(
    () => dataModule.linhtinhBaseURL1,
    instanceName: 'linhtinhBaseURL1',
  );
  gh.singleton<_i3.Dio>(
    dataModule.getLinhTinhDio(get<String>(instanceName: 'linhtinhBaseURL1')),
    instanceName: 'linhtinh_dio_1',
  );
  gh.singleton<_i3.Dio>(
    dataModule.getDio1(
      get<String>(instanceName: 'concungBaseURL1'),
      get<Map<String, dynamic>>(instanceName: 'concungHeaders1'),
    ),
    instanceName: 'dio_retrofit_1',
  );
  gh.singleton<_i3.Dio>(
    dataModule.getDio2(
      get<String>(instanceName: 'concungBaseURL2'),
      get<Map<String, dynamic>>(instanceName: 'concungHeaders2'),
    ),
    instanceName: 'dio_retrofit_2',
  );
  gh.singleton<_i4.DioService>(
    dataModule.getDioService1(get<_i3.Dio>(instanceName: 'dio_retrofit_1')),
    instanceName: 'dio_1',
  );
  gh.factory<_i5.ExampleModel1Remote>(() => _i5.ExampleModel1Remote(
        get<_i3.Dio>(instanceName: 'dio_retrofit_1'),
        baseURL: get<String>(),
      ));
  gh.factory<_i5.ExampleModel2Remote>(() => _i5.ExampleModel2Remote(
        get<_i3.Dio>(instanceName: 'dio_retrofit_2'),
        baseURL: get<String>(),
      ));
  gh.factory<_i5.PostRemote>(() => _i5.PostRemote(
        get<_i3.Dio>(instanceName: 'linhtinh_dio_1'),
        baseURL: get<String>(),
      ));
  gh.singleton<_i6.DioExampleModel1>(
      _i6.DioExampleModel1(get<_i4.DioService>(instanceName: 'dio_1')));
  return get;
}

class _$DataModule extends _i7.DataModule {}
