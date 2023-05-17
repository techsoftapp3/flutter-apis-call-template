import 'package:api_tools_test/model/services/dio_services.dart';
import 'package:api_tools_test/model/services/end_points.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DataModule {
  //Initialize the base url
  @Named("concungBaseURL1")
  String get baseURL1 => EndPoints.baseURL1;

  @Named("concungBaseURL2")
  String get baseURL2 => EndPoints.baseURL2;

  @Named("linhtinhBaseURL1")
  String get linhtinhBaseURL1 => "https://jsonplaceholder.typicode.com/";
  //Initillized the headers
  @Named("concungHeaders1")
  Map<String, dynamic> get conCungheaders1 => <String, dynamic>{
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

  @Named("concungHeaders2")
  Map<String, dynamic> get conCungheaders2 => {
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
  @Named("linhtinh_dio_1")
  Dio getLinhTinhDio(@Named("linhtinhBaseURL1") String url) => dio(url, {});

  @singleton
  @Named("dio_retrofit_1")
  Dio getDio1(@Named("concungBaseURL1") String url,
          @Named("concungHeaders1") Map<String, dynamic> headers) =>
      dio(url, headers);

  @singleton
  @Named("dio_retrofit_2")
  Dio getDio2(@Named("concungBaseURL2") String url,
          @Named("concungHeaders2") Map<String, dynamic> headers) =>
      dio(url, headers);

  @singleton
  @Named("dio_1")
  DioService getDioService1(@Named("dio_retrofit_1") Dio dio) =>
      DioService(dio);

  Dio dio(String url, Map<String, dynamic> headers) {
    return Dio(BaseOptions(
      baseUrl: url,
      headers: headers,
      connectTimeout: const Duration(milliseconds: 10000),
      receiveTimeout: const Duration(milliseconds: 10000),
      sendTimeout: const Duration(milliseconds: 10000),
    ));
  }
}
