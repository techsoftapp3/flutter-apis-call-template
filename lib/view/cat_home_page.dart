import 'package:api_tools_test/view_model/cat_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class CatHomePage extends GetView<CatController> {
  const CatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          TextButton(
            onPressed: () async {
              controller.getCatsImage(
                limit: 2,
                order: "RAND",
              );
            },
            child: Text(
              'Get',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          TextButton(
            onPressed: () async {
              controller.getCatImagesFromDB();
            },
            child: Text(
              'Get DB',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ]),
      ),
    );
  }
}
