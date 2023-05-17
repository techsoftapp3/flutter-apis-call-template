import 'package:api_tools_test/main.dart';
import 'package:api_tools_test/view_model/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageName {
  static const String homeScreen = "/home";
}

class PageConfig {
  static List<GetPage> get getPages => [
        GetPage(
          name: PageName.homeScreen,
          page: () => const MyHomePage(),
          binding: MyControllerBinding(),
          transition: Transition.fadeIn,
        )
      ];
}
