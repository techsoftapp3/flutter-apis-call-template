import 'package:api_tools_test/model/data_module.dart';
import 'package:api_tools_test/model/data_source/local/post_dao.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/retrofit_services.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/model/services/database.dart';
import 'package:dio/dio.dart';
import 'package:floor/floor.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  late PostRemote remote;
  late AppDatabase local;

  setUp(() async {
    remote = PostRemote(dio);
    local = await $FloorAppDatabase.databaseBuilder("app_database.db").build();
  });

  tearDown(() {});

  group("Test Post APIs", () {
    test("Test GET Posts by Id", () async {
      expect(await remote.getPostById(1), isA<Post>());
    });
    test("Perform GET List of Posts", () async {
      expect(await remote.getPosts(), isA<List<Post>>());
    });
    test("Perform Filter Posts by user Id", () async {
      expect(await remote.filterByUserId(12), isA<List<Post>>());
    });
    test("Perform DELETE Posts by Id", () async {
      expect(await remote.deletePost(12), isA<Post>());
    });
    test("Perform Update Posts by Id", () async {
      expect(
        await remote.updatePost(
            Post.fromJson(
              <String, dynamic>{
                "id": 1,
                "title": 'Le Minh Dang',
                "body": "trying to be better",
                "userId": 100,
              },
            ),
            1),
        isA<Post>(),
      );
    });
  });

  group("Test Database", () {
    test("Test GET Posts by Id", () async {
      expect(await local.postDao.getPostsById(12), isA<Post?>());
    });
    test("Perform GET List of Posts", () async {
      expect(await local.postDao.getAllPost(), isA<List<Post>>());
    });
    test("Perform Filter Posts by user Id", () async {
      expect(await local.postDao.getPostByUserId(12), isA<List<Post>>());
    });
    test("Perform DELETE Posts by Id", () async {
      expect(await local.postDao.deletePostById(12), isA<int?>());
    });
    test("Perform Update Posts by Id", () async {
      expect(
        await local.postDao.updatePost(
          Post.fromJson(
            <String, dynamic>{
              "id": 1,
              "title": 'Le Minh Dang',
              "body": "trying to be better",
              "userId": 100,
            },
          ),
        ),
        isA<int>(),
      );
    });
    test("Perform DELETE Posts", () async {
      expect(await local.postDao.deletePosts(), isA<int>());
    });
  });
}
