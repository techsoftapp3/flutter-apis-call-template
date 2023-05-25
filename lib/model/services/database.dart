import 'dart:async';
import 'package:api_tools_test/model/cat_image/breed.dart';
import 'package:api_tools_test/model/cat_image/cat_image.dart';
import 'package:api_tools_test/model/cat_image/weight.dart';
import 'package:api_tools_test/model/data_source/local/cat_dao.dart';
import 'package:api_tools_test/model/data_source/local/post_dao.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 2, entities: [Post, CatImage, Breed, Weight])
abstract class AppDatabase extends FloorDatabase {
  PostDao get postDao;
  CatDao get catDao;
  Future<String> get databasePath async {
    const String dbName = 'app_database.db';
    final directory = await getApplicationDocumentsDirectory();
    String dbPath = join(directory.path, dbName);
    return dbPath;
  }
}
