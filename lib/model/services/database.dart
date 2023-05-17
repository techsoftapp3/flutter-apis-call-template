import 'dart:async';
import 'package:api_tools_test/model/data_source/local/post_dao.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:floor/floor.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

@Database(version: 1, entities: [Post])
abstract class AppDatabase extends FloorDatabase {
  PostDao get postDao;
}
