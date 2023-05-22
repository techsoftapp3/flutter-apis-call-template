import 'package:api_tools_test/config/injectable.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/repositories/cat_repository.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class CatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => getIt<CatController>());
  }
}

@injectable
class CatController extends GetxController {
  CatController(this.catRepository);
  final CatRepository catRepository;

  Future<void> getCatsImage({
    required int limit,
    int page = 10,
    String order = "random",
    bool hasBreeds = true,
    String breadIds = "",
    String categoryIds = "",
    String subId = "",
  }) {
    return catRepository
        .getImages(
          limit: limit,
          page: page,
          subId: subId,
          breadIds: breadIds,
          categoryIds: categoryIds,
          order: order,
          hasBreeds: hasBreeds,
        )
        .then(
          (value) => value.forEach((element) {
            print(element.toString());
          }),
        );
  }

  Future<void> getCatImagesFromDB() async {
    return catRepository.getCatImagesFromDB().then(
          (value) => value.forEach((element) {
            print(element.toString());
          }),
        );
  }
}
