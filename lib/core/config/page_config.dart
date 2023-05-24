import 'package:api_tools_test/view/cat_home_page.dart';
import 'package:api_tools_test/view/home_page.dart';
import 'package:api_tools_test/view/post_home_page.dart';
import 'package:api_tools_test/view_model/cat_controller.dart';
import 'package:api_tools_test/view_model/home_controller.dart';
import 'package:api_tools_test/view_model/post_controller.dart';
import 'package:get/get.dart';

class PageName {
  static const String homePage = "/home";
  static const String postPage = "/post";
  static const String catPage = "/cat";
}

class PageConfig {
  static List<GetPage> get getPages => [
        GetPage(
          name: PageName.homePage,
          page: () => const HomePage(),
          binding: HomeControllerBinding(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: PageName.postPage,
          page: () => const PostPage(),
          binding: PostControllerBinding(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: PageName.catPage,
          page: () => const CatHomePage(),
          binding: CatBinding(),
          transition: Transition.fadeIn,
        )
      ];
}
