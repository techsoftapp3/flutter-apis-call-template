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
}
