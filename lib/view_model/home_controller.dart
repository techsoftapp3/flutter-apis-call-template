import 'package:api_tools_test/core/config/injectable.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => getIt<HomeController>());
  }
}

@singleton
class HomeController extends GetxController {}
