import 'dart:convert';

import 'package:api_tools_test/model/cat_image/breed.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/cat_image/cat_image_with_breed.dart';
import 'package:api_tools_test/model/cat_image/weight.dart';
import 'package:floor/floor.dart';

// class BreedConverter extends TypeConverter<List<Breed>?, String> {
//   @override
//   List<Breed> decode(String databaseValue) {
//     final data = jsonDecode(databaseValue);
//     final List<Map<String, dynamic>> result = [];
//     result.add(data);
//     final List<Breed> breeds = [];
//     for (final element in result) {
//       breeds.add(Breed.fromJson(element));
//     }
//     return breeds;
//   }

//   @override
//   String encode(List<Breed>? value) {
//     final Map<String, dynamic> data = {};
//     for (final element in value ?? []) {
//       data.addAll(element.toJson());
//     }
//     return jsonEncode(data);
//   }
// }

class WeightConverter extends TypeConverter<Weight?, String> {
  @override
  Weight decode(String databaseValue) {
    final data = jsonDecode(databaseValue);
    final Weight weight = Weight.fromJson(data);
    return weight;
  }

  @override
  String encode(Weight? value) {
    final Map<String, dynamic> data = {};
    data.addAll((value ??
            Weight(
              imperial: "8 - 16",
              metric: "4 - 7",
            ))
        .toJson());
    return jsonEncode(data);
  }
}

@dao
abstract class CatDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertCatImage(List<CatImage> catImage);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertBreed(List<Breed> catImage);

  @Query(
      "select * from CatImage as c inner join Breed as b on b.`cat_id` = c.`id`")
  Future<List<CatImageWithBreed>> getCatImagesFromDB();
}
