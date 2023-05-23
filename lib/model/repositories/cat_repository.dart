import 'package:api_tools_test/core/config/injectable.dart';
import 'package:api_tools_test/model/cat_image/breed.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
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
  Future<List<CatImage>> getCatImagesFromDB();
  Future<List<Breed>> getBreedsFromCatImage(String id);
  Future<void> insertCatImage(List<CatImage> catImages);
  Future<int?> deleteCatImagesData();
  Future<int?> deleteCatImagesDataById(String id);
  Future<int?> updateCatImageSize({
    required String id,
    required double height,
    required double width,
  });
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
    local.catDao.insertCatImage(fromServer);
    return fromServer;
  }

  @override
  Future<List<CatImage>> getCatImagesFromDB() async {
    return local.catDao.getCatImagesFromDB();
  }

  @override
  Future<List<Breed>> getBreedsFromCatImage(String id) async {
    final fromLocal = await local.catDao.getBreedsFromCatImage(id);
    final result = getIt<BreedConverter>().decode(fromLocal ?? '');
    return result;
  }

  @override
  Future<void> insertCatImage(List<CatImage> catImages) {
    return local.catDao.insertCatImage(catImages);
  }

  @override
  Future<int?> deleteCatImagesData() {
    return local.catDao.deleteCatImagesData();
  }

  @override
  Future<int?> deleteCatImagesDataById(String id) {
    return local.catDao.deleteCatImagesDataById(id);
  }

  @override
  Future<int?> updateCatImageSize({
    required String id,
    required double height,
    required double width,
  }) {
    return local.catDao.updateCatImageSize(id, height, width);
  }
}
