import 'package:api_tools_test/core/config/injectable.dart';
import 'package:api_tools_test/model/cat_image/breed.dart';
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

  Future<void> getBreedsFromCatImageById(String id) async {
    return catRepository.getBreedsFromCatImage(id).then(
      (value) {
        if (value.isEmpty) print("No record found!");
        value.forEach((element) {
          print(element.toString());
        });
      },
    );
  }

  Future<void> insertCatImage(List<CatImage> catImages) async {
    return catRepository.insertCatImage(catImages);
  }

  Future<void> deleteCatImages() {
    return catRepository.deleteCatImagesData().then(
          (value) => print("Already delete ${value ?? 0} records"),
        );
  }

  Future<void> deleteCatImagesById(String id) {
    return catRepository.deleteCatImagesDataById(id).then(
          (value) => print("Already delete ${value ?? 0} records"),
        );
  }

  Future<void> updateCatImageSizeById({
    required String id,
    required double height,
    required double width,
  }) {
    return catRepository
        .updateCatImageSize(height: height, width: width, id: id)
        .then((value) => print("Already delete ${value ?? 0} records"));
  }
}

final clm = [
  {
    "breeds": [
      {
        "weight": {"imperial": "7 - 12", "metric": "3 - 5"},
        "id": "snow",
        "name": "Snowshoe",
        "temperament": "Affectionate, Social, Intelligent, Sweet-tempered",
        "origin": "United States",
        "country_codes": "US",
        "country_code": "US",
        "description":
            "The Snowshoe is a vibrant, energetic, affectionate and intelligent cat. They love being around people which makes them ideal for families, and becomes unhappy when left alone for long periods of time. Usually attaching themselves to one person, they do whatever they can to get your attention.",
        "life_span": "14 - 19",
        "indoor": 0,
        "lap": 1,
        "alt_names": "",
        "adaptability": 5,
        "affection_level": 5,
        "child_friendly": 4,
        "dog_friendly": 5,
        "energy_level": 4,
        "grooming": 3,
        "health_issues": 1,
        "intelligence": 5,
        "shedding_level": 3,
        "social_needs": 4,
        "stranger_friendly": 4,
        "vocalisation": 5,
        "experimental": 0,
        "hairless": 0,
        "natural": 0,
        "rare": 0,
        "rex": 0,
        "suppressed_tail": 0,
        "short_legs": 0,
        "wikipedia_url": "https://en.wikipedia.org/wiki/Snowshoe_(cat)",
        "hypoallergenic": 0,
        "reference_image_id": "MK-sYESvO"
      },
      {
        "weight": {"imperial": "7 - 12", "metric": "3 - 5"},
        "id": "snow",
        "name": "Snowshoe",
        "temperament": "Affectionate, Social, Intelligent, Sweet-tempered",
        "origin": "United States",
        "country_codes": "US",
        "country_code": "US",
        "description":
            "The Snowshoe is a vibrant, energetic, affectionate and intelligent cat. They love being around people which makes them ideal for families, and becomes unhappy when left alone for long periods of time. Usually attaching themselves to one person, they do whatever they can to get your attention.",
        "life_span": "14 - 19",
        "indoor": 0,
        "lap": 1,
        "alt_names": "",
        "adaptability": 5,
        "affection_level": 5,
        "child_friendly": 4,
        "dog_friendly": 5,
        "energy_level": 4,
        "grooming": 3,
        "health_issues": 1,
        "intelligence": 5,
        "shedding_level": 3,
        "social_needs": 4,
        "stranger_friendly": 4,
        "vocalisation": 5,
        "experimental": 0,
        "hairless": 0,
        "natural": 0,
        "rare": 0,
        "rex": 0,
        "suppressed_tail": 0,
        "short_legs": 0,
        "wikipedia_url": "https://en.wikipedia.org/wiki/Snowshoe_(cat)",
        "hypoallergenic": 0,
        "reference_image_id": "MK-sYESvO"
      }
    ],
    "id": "HELLO",
    "url": "https://cdn2.thecatapi.com/images/MWPRkZh6u.jpg",
    "width": 1080,
    "height": 1350
  }
];
