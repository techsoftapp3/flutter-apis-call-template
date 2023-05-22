import 'dart:async';
import 'package:api_tools_test/model/cat_image/breed.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/cat_image/cat_image_with_breed.dart';
import 'package:api_tools_test/model/cat_image/weight.dart';
import 'package:api_tools_test/model/data_source/local/cat_dao.dart';
import 'package:api_tools_test/model/data_source/local/post_dao.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@TypeConverters([WeightConverter])
@Database(version: 1, entities: [Post, CatImage, Breed, Weight,CatImageWithBreed])
abstract class AppDatabase extends FloorDatabase {
  PostDao get postDao;
  CatDao get catDao;
}
