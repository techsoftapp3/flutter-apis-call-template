import 'dart:math';

import 'package:api_tools_test/model/cat_image/breed.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/cat_image/cat_image_with_breed.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/cat_remote.dart';
import 'package:api_tools_test/model/services/database.dart';
import 'package:injectable/injectable.dart';

abstract class CatRepository {
  Future<List<CatImage>> getImages({
    required int limit,
    int page = 10,
    String order = "random",
    bool hasBreeds = true,
    String breadIds = "",
    String categoryIds = "",
    String subId = "",
  });
  Future<List<CatImageWithBreed>> getCatImagesFromDB();
}

@Injectable(as: CatRepository)
class CatRepositoryImpl implements CatRepository {
  CatRepositoryImpl(this.remote, this.local);
  final CatRemote remote;
  final AppDatabase local;
  @override
  Future<List<CatImage>> getImages({
    required int limit,
    int page = 10,
    String order = "RAND",
    bool hasBreeds = true,
    String breadIds = "",
    String categoryIds = "",
    String subId = "",
  }) async {
    final fromServer = await remote.getImages(
      limit: limit,
      page: page,
      subId: subId,
      breadIds: breadIds,
      categoryIds: categoryIds,
      order: order,
      hasBreeds: hasBreeds,
    );
    List<Breed> breedResult = [];
    for (final element in fromServer) {
      List<Breed>? breeds = element.breeds ?? [];
      for (final breed in breeds) {
        breed.catId = element.id;
      }
      breedResult.addAll(breeds);
    }
    local.catDao.insertCatImage(fromServer);
    local.catDao.insertBreed(breedResult);
    return fromServer;
  }

  @override
  Future<List<CatImageWithBreed>> getCatImagesFromDB() async {
    return local.catDao.getCatImagesFromDB();
  }
}
