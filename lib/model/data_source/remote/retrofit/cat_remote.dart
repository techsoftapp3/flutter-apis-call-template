import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
part 'cat_remote.g.dart';

@injectable
@RestApi()
abstract class CatRemote {
  @factoryMethod
  factory CatRemote(@Named("cat_dio") Dio dio,
          {@Named("cat_base_url") String? baseUrl}) =>
      _CatRemote(dio, baseUrl: baseUrl);

  @GET("images/search")
  Future<List<CatImage>> getImages({
    @Query("limit") required int limit,
    @Query("page") int page = 10,
    @Query("order") String order = "RAND",
    @Query("has_breeds") bool hasBreeds = true,
    @Query("breed_ids") String breadIds = "",
    @Query("category_ids") String categoryIds = "",
    @Query("sub_id") String subId = "",
  });
}
