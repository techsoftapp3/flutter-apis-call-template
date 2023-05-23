// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../model/cat_image/breed.dart' as _i6;
import '../../model/cat_image/cat_image.dart' as _i4;
import '../../model/data_module.dart' as _i15;
import '../../model/data_source/remote/dio/dio_remote.dart' as _i12;
import '../../model/data_source/remote/retrofit/cat_remote.dart' as _i10;
import '../../model/data_source/remote/retrofit/retrofit_services.dart' as _i8;
import '../../model/repositories/cat_repository.dart' as _i11;
import '../../model/repositories/retrofit_repository.dart' as _i9;
import '../../model/services/database.dart' as _i3;
import '../../model/services/dio_services.dart' as _i7;
import '../../view_model/cat_controller.dart' as _i14;
import '../../view_model/controller.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  await gh.factoryAsync<_i3.AppDatabase>(
    () => dataModule.logDatabase,
    preResolve: true,
  );
  gh.singleton<_i4.BreedConverter>(_i4.BreedConverter());
  gh.factory<_i5.Dio>(() => dataModule.dio(
        get<String>(),
        get<Map<String, dynamic>>(),
        get<_i5.Interceptor>(),
      ));
  gh.factory<Map<String, dynamic>>(
    () => dataModule.conCungHeaders1,
    instanceName: 'conCungHeaders1',
  );
  gh.factory<Map<String, dynamic>>(
    () => dataModule.conCungHeaders2,
    instanceName: 'conCungHeaders2',
  );
  gh.factory<String>(
    () => dataModule.catBaseURL,
    instanceName: 'cat_base_url',
  );
  gh.factory<String>(
    () => dataModule.pokemonBaseURL,
    instanceName: 'pokemon_base_url',
  );
  gh.factory<String>(
    () => dataModule.baseURL1,
    instanceName: 'conCungBaseURL1',
  );
  gh.factory<String>(
    () => dataModule.baseURL2,
    instanceName: 'conCungBaseURL2',
  );
  gh.factory<String>(
    () => dataModule.linhtinhBaseURL1,
    instanceName: 'linhtinhBaseURL1',
  );
  gh.singleton<_i6.WeightConverter>(_i6.WeightConverter());
  gh.singleton<_i5.Dio>(
    dataModule.getCatDio(get<String>(instanceName: 'cat_base_url')),
    instanceName: 'cat_dio',
  );
  gh.singleton<_i5.Dio>(
    dataModule.getLinhTinhDio(get<String>(instanceName: 'linhtinhBaseURL1')),
    instanceName: 'linhtinh_dio_1',
  );
  gh.singleton<_i5.Dio>(
    dataModule.getDio1(
      get<String>(instanceName: 'conCungBaseURL1'),
      get<Map<String, dynamic>>(instanceName: 'conCungHeaders1'),
    ),
    instanceName: 'dio_retrofit_1',
  );
  gh.singleton<_i5.Dio>(
    dataModule.getDio2(
      get<String>(instanceName: 'conCungBaseURL2'),
      get<Map<String, dynamic>>(instanceName: 'conCungHeaders2'),
    ),
    instanceName: 'dio_retrofit_2',
  );
  gh.singleton<_i7.DioService>(
    dataModule.getDioService1(get<_i5.Dio>(instanceName: 'dio_retrofit_1')),
    instanceName: 'dio_1',
  );
  gh.factory<_i8.ExampleModel1Remote>(() => _i8.ExampleModel1Remote(
        get<_i5.Dio>(instanceName: 'dio_retrofit_1'),
        baseURL: get<String>(instanceName: 'conCungBaseURL2'),
      ));
  gh.factory<_i8.ExampleModel2Remote>(() => _i8.ExampleModel2Remote(
        get<_i5.Dio>(instanceName: 'dio_retrofit_2'),
        baseURL: get<String>(instanceName: 'conCungBaseURL2'),
      ));
  gh.factory<_i8.PostRemote>(() => _i8.PostRemote(
        get<_i5.Dio>(instanceName: 'linhtinh_dio_1'),
        baseURL: get<String>(instanceName: 'linhtinhBaseURL1'),
      ));
  gh.singleton<_i9.PostRepository>(_i9.PostRepositoryImpl(
    get<_i8.PostRemote>(),
    get<_i3.AppDatabase>(),
  ));
  gh.factory<_i10.CatRemote>(() => _i10.CatRemote(
        get<_i5.Dio>(instanceName: 'cat_dio'),
        baseUrl: get<String>(instanceName: 'cat_base_url'),
      ));
  gh.factory<_i11.CatRepository>(() => _i11.CatRepositoryImpl(
        get<_i10.CatRemote>(),
        get<_i3.AppDatabase>(),
      ));
  gh.singleton<_i12.DioExampleModel1>(
      _i12.DioExampleModel1(get<_i7.DioService>(instanceName: 'dio_1')));
  gh.factory<_i13.MyController>(
      () => _i13.MyController(get<_i9.PostRepository>()));
  gh.factory<_i14.CatController>(
      () => _i14.CatController(get<_i11.CatRepository>()));
  return get;
}

class _$DataModule extends _i15.DataModule {}
