import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:floor/floor.dart';

@dao
abstract class CatDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertCatImage(List<CatImage> catImage);

  @Query("select * from CatImage")
  Future<List<CatImage>> getCatImagesFromDB();

  @Query("select breeds from CatImage as c where c.`id` = :id")
  Future<String?> getBreedsFromCatImage(String id);

  @Query("delete from CatImage")
  Future<int?> deleteCatImagesData();

  @Query("delete from CatImage as c where c.`id` = :id")
  Future<int?> deleteCatImagesDataById(String id);

  @Query(
      "update CatImage as c set c.`height` = :height. c.`width` = :width where c.`id` = :id")
  Future<int?> updateCatImageSize(String id, double height, double width);
}
