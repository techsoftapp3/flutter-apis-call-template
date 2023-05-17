import 'package:api_tools_test/model/models/example_model1.dart';
import 'package:api_tools_test/model/models/example_model2.dart';
import 'package:api_tools_test/model/models/post_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part "retrofit_services.g.dart";

@injectable
@RestApi()
abstract class ExampleModel1Remote {
  @factoryMethod
  factory ExampleModel1Remote(
    @Named("dio_retrofit_1") Dio dio, {
    String? baseURL,
  }) {
    return _ExampleModel1Remote(dio, baseUrl: baseURL);
  }

  @GET("home/getNewsBox")
  Future<ExampleModel1> getExampleModel1({
    @Query("checksum") String? checksum,
    @Query("customer_phone_login") String? customerPhoneLogin,
    @Query("device_os") required String deivceOs,
    @Query("id_customer") String? idCustomer,
    @Query("id_customer_login") String? idCustomerLogin,
    @Query("id_language") String? idLanguage,
    @Query("id_session") String? idSession,
    @Query("lasttime") String? lastTime,
    @Query("version_app") String? versionApp,
    @Query("id_district_login") String? idDistrictLogin = " ",
  });

  @GET("home/getNewsBox")
  Future<ExampleModel1> getExampleModel1V2({
    @Queries() required Map<String, dynamic> queries,
  });
}

@injectable
@RestApi()
abstract class ExampleModel2Remote {
  @factoryMethod
  factory ExampleModel2Remote(
    @Named("dio_retrofit_2") Dio dio, {
    String? baseURL,
  }) {
    return _ExampleModel2Remote(dio, baseUrl: baseURL);
  }
  @GET("home/{query_param}")
  Future<ExampleModel2> getExample2(@Path("query_param") String queryParam);
}

@injectable
@RestApi()
abstract class PostRemote {
  @factoryMethod
  factory PostRemote(@Named("linhtinh_dio_1") Dio dio, {String? baseURL}) {
    return _PostRemote(dio, baseUrl: baseURL);
  }
  @GET("posts/{id}")
  Future<PostModel> getPostById(@Path("id") int id);

  @GET("posts")
  Future<List<PostModel>> getPosts();

  @POST("posts")
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<PostModel> addPost(@Body() PostModel json);

  @PUT("posts/{id}")
  @Headers(<String, dynamic>{
    'Content-type': 'application/json; charset=UTF-8',
  })
  Future<PostModel> updatePost(@Body() PostModel json, @Path("id") int id);
  @DELETE("posts/{id}")
  Future<PostModel> deletePost(@Path("id") int id);

  @GET("posts")
  Future<List<PostModel>> filterByUserId(@Query("userId") int userId);
}
