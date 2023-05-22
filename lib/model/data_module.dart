import 'package:api_tools_test/model/services/database.dart';
import 'package:api_tools_test/model/services/dio_services.dart';
import 'package:api_tools_test/model/services/end_points.dart';
import 'package:dio/dio.dart';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  @preResolve
  Future<AppDatabase> get logDatabase async {
    int oldVersion = 1;
    int newVersion = 2;
    List<Migration> list = <Migration>[
      // Migration(oldVersion, newVersion, (database) {
      //   return database.execute("""CREATE TABLE IF NOT EXISTS `Post`
      //         (
      //           `userId` ,
      //           `id` INTERGER PRIMARY KEY UNIQUE AUTOINCREMENT,
      //           `title` TEXT,
      //           `body` TEXT,
      //         )
      //         """);
      // }),
      Migration(oldVersion, newVersion, (database) {
        return database.execute("""
          CREATE TABLE IF NOT EXISTS `CatImage` 
          (
            `url` TEXT ,
            `id` TEXT PRIMARY KEY UNIQUE ,
            `breeds` TEXT,
            `width` INTEGER,
            `height` INTEGER,
          );
          CREATE TABLE IF NOT EXISTS `Weight`
          (
            `id` INTEGER PRIMARY KEY UNIQUE AUTOINCREMENT,  
            `imperial` TEXT,
            `metric` TEXT,
          );
          CREATE TABLE IF NOT EXISTS `Breed`
          (
            `id` PRIMARY KEY UNIQUE,
            `weight` TEXT,
            `name` TEXT,
            `cfa_url` TEXT,
            `vetstreet_url` TEXT,
            `vcahospitals_url` TEXT,
            `temperament` TEXT,
            `origin` TEXT,
            `country_codes` TEXT,
            `country_code` TEXT,
            `description` TEXT,
            `life_span` TEXT,
            `indoor` INTEGER,
            `lap` INTEGER,
            `alt_names` TEXT,
            `adaptability` INTEGER,
            `affection_level` INTEGER,
            `child_friendly` INTEGER,
            `dog_friendly` INTEGER,
            `energy_level` INTEGER,
            `grooming` INTEGER,
            `health_issues` INTEGER,
            `intelligence` INTEGER,
            `shedding_level` INTEGER,
            `social_needs` INTEGER,
            `stranger_friendly` INTEGER,
            `vocalisation` INTEGER,
            `experimental` INTEGER,
            `hairless` INTEGER,
            `natural` INTEGER,
            `rare` INTEGER,
            `rex` INTEGER,
            `short_legs` INTEGER,
            `wikipedia_url` TEXT,
            `hypoallergenic` INTEGER,
            `reference_image_id` INTEGER,
          );

              """);
      }),
    ];
    return $FloorAppDatabase
        .databaseBuilder('app_database.db')
        .addMigrations(list)
        .build();
  }

  @Named("cat_base_url")
  String get catBaseURL => "https://api.thecatapi.com/v1/";

  @Named("pokemon_base_url")
  String get pokemonBaseURL => "https://pokeapi.co/api/v2/";
  //Initialize the base url
  @Named("conCungBaseURL1")
  String get baseURL1 => EndPoints.baseURL1;

  @Named("conCungBaseURL2")
  String get baseURL2 => EndPoints.baseURL2;

  @Named("linhtinhBaseURL1")
  String get linhtinhBaseURL1 => "https://jsonplaceholder.typicode.com/";
  //Initillized the headers
  @Named("conCungHeaders1")
  Map<String, dynamic> get conCungHeaders1 => <String, dynamic>{
        "Host": "ecservice.concung.com",
        "apiKey": "tlconabccung2020@ios",
        "apiuser": "ios_user",
        "Accept": "*/*",
        "User-Agent":
            "Con Cung/4.0.21 (com.concung.ecapp; build:1; iOS 16.0.2) Alamofire/5.6.4",
        "Accept-Language": "vi-VN;q=1.0",
        "Connection": "keep-alive",
        "Cookie": "Srv=s206|ZGG7p|ZGG7p",
      };

  @Named("conCungHeaders2")
  Map<String, dynamic> get conCungHeaders2 => {
        "Host": "ecapihandle.concung.com",
        "apiKey": "concung2018@adres",
        "apiuser": "ios_user",
        "Accept": "*/*",
        "User-Agent":
            "EC_SCM/4.0.0 (com.concung.ecappDEV; build:59; iOS 16.0.2) Alamofire/5.6.4",
        "Accept-Language": "vi-VN;q=1.0",
        "Connection": "keep-alive",
        "Cookie": "Srv=myda1340|ZGG8b|ZGG79"
      };

  //Initialized the Dios

  @singleton
  @Named("cat_dio")
  Dio getCatDio(@Named("cat_base_url") String url) => dio(
        url,
        {
          "x-api-key":
              "live_Qfj0qIFQ7jbZBnpn9t9ZocsvVYdpqJUUF6BMBOu4BtE4r4OxTG3QyuA53oxcEfb9"
        },
        InterceptorsWrapper(),
      );

  @singleton
  @Named("linhtinh_dio_1")
  Dio getLinhTinhDio(@Named("linhtinhBaseURL1") String url) =>
      dio(url, {}, Interceptor());

  @singleton
  @Named("dio_retrofit_1")
  Dio getDio1(@Named("conCungBaseURL1") String url,
          @Named("conCungHeaders1") Map<String, dynamic> headers) =>
      dio(url, headers, Interceptor());

  @singleton
  @Named("dio_retrofit_2")
  Dio getDio2(@Named("conCungBaseURL2") String url,
          @Named("conCungHeaders2") Map<String, dynamic> headers) =>
      dio(url, headers, Interceptor());

  @singleton
  @Named("dio_1")
  DioService getDioService1(@Named("dio_retrofit_1") Dio dio) =>
      DioService(dio);

  Dio dio(
      String url, Map<String, dynamic> headers, Interceptor dioIntercepter) {
    final dioResult = Dio(
      BaseOptions(
        baseUrl: url,
        headers: headers,
        connectTimeout: const Duration(milliseconds: 10000),
        receiveTimeout: const Duration(milliseconds: 10000),
        sendTimeout: const Duration(milliseconds: 10000),
      ),
    );
    dioResult.interceptors.add(dioIntercepter);
    return dioResult;
  }
}
