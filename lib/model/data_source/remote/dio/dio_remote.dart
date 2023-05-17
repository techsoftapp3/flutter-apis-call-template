import 'package:api_tools_test/model/entities/example_model1.dart';
import 'package:api_tools_test/model/services/dio_services.dart';
import 'package:api_tools_test/model/services/end_points.dart';
import 'package:api_tools_test/model/services/http_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioExampleModel1 {
  final DioService instance;
  @factoryMethod
  DioExampleModel1(@Named("dio_1") this.instance);
  Future<ExampleModel1> getExampleModel1Dio(
      {String? checksum,
      String? customerPhoneLogin,
      String? deivceOs,
      String? idCustomer,
      String? idCustomerLogin,
      String? idLanguage,
      String? idSession,
      String? lastTime,
      String? versionApp,
      String? idDistrictLogin = " "}) {
    final request = APIServiceRequest(
      EndPoints.endPoint1,
      queryParams: {
        "checksum": checksum,
        "customer_phone_login": customerPhoneLogin,
        "device_os": deivceOs,
        "id_customer": idCustomer,
        "id_customer_login": idCustomerLogin,
        "id_district_login": idDistrictLogin ?? " ",
        "id_language": idLanguage,
        "id_session": idSession,
        "lasttime": lastTime,
        "version_app": versionApp,
      },
      (response) => ExampleModel1.fromJson(response),
    );
    return instance.get(request);
  }
}

class HttpExampleModel1 {
  final HttpService instance = HttpService.instance();
  Future<ExampleModel1> getExampleModel1Http(
      {String? checksum,
      String? customerPhoneLogin,
      String? deivceOs,
      String? idCustomer,
      String? idCustomerLogin,
      String? idLanguage,
      String? idSession,
      String? lastTime,
      String? versionApp,
      String? idDistrictLogin = " "}) {
    final request = APIServiceRequest(
      EndPoints.httpEndPoint1,
      header: <String, String>{
        "Host": "ecservice.concung.com",
        "apiKey": "tlconabccung2020@ios",
        "apiuser": "ios_user",
        "Accept": "*/*",
        "User-Agent":
            "Con Cung/4.0.21 (com.concung.ecapp; build:1; iOS 16.0.2) Alamofire/5.6.4",
        "Accept-Language": "vi-VN;q=1.0",
        "Connection": "keep-alive",
        "Cookie": "Srv=s206|ZGG7p|ZGG7p",
      },
      queryParams: {
        "checksum": checksum!,
        "customer_phone_login": customerPhoneLogin!,
        "device_os": deivceOs!,
        "id_customer": idCustomer!,
        "id_customer_login": idCustomerLogin!,
        "id_district_login": idDistrictLogin ?? " ",
        "id_language": idLanguage!,
        "id_session": idSession!,
        "lasttime": lastTime!,
        "version_app": versionApp!,
      },
      (response) => ExampleModel1.fromJson(response),
    );
    return instance.get(request);
  }
}
