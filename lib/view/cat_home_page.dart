import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/view_model/cat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class CatHomePage extends GetView<CatController> {
  const CatHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.getCatImagesFromDB();
                },
                child: Text(
                  'Get DB',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.getBreedsFromCatImageById("HELLO");
                },
                child: Text(
                  'Get Breeds from Cat Image',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  final param = clm.map((e) => CatImage.fromJson(e)).toList();
                  controller.insertCatImage(param);
                },
                child: Text(
                  'Insert Cat Image',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.deleteCatImagesById("HELLO");
                },
                child: Text(
                  'Delete Cat Image by Id',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.deleteCatImages();
                },
                child: Text(
                  'Delete all Cat Images',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              TextButton(
                onPressed: () async {
                  controller.updateCatImageSizeById(
                      width: -1, height: -2, id: "HELLO");
                },
                child: Text(
                  'Update Cat Image size by Id',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
