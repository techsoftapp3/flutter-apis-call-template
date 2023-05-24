import 'package:api_tools_test/core/config/page_config.dart';
import 'package:api_tools_test/view_model/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.toNamed(PageName.postPage);
              },
              child: Text(
                "Go to Post ",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(PageName.catPage);
              },
              child: Text(
                "Go to Cat",
                style: Theme.of(context).textTheme.headline6,
              ),
            )
          ],
        ),
      )),
    );
  }
}
