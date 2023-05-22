import 'package:api_tools_test/model/cat_image/cat_image.dart';
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
                limit: 10,
                page: 1,
                hasBreeds: true,
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
          TextButton(
            onPressed: () async {
              controller.getBreedsFromCatImageById("HELLO");
            },
            child: Text(
              'Get Breeds from Cat Image',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          TextButton(
            onPressed: () async {
              final param = clm.map((e) => CatImage.fromJson(e)).toList();
              controller.insertCatImage(param);
            },
            child: Text(
              'Insert Cat Image',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ]),
      ),
    );
  }
}
