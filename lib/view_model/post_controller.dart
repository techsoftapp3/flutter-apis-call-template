import 'package:api_tools_test/core/config/injectable.dart';
import 'package:api_tools_test/model/repositories/retrofit_repository.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class PostControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => getIt<PostController>());
  }
}

@injectable
class PostController extends GetxController {
  PostController(this.postRepository);
  final PostRepository postRepository;
  void getPostById(int id) async {
    return postRepository.getPostById(id).then(
          (value) => print(value.toJson()),
        );
  }

  void getPosts() async {
    return postRepository.getPosts().then((value) {
      if (value.isEmpty) {
        print("No posts in database");
      }
      value.forEach((element) {
        print(element.toJson());
      });
    });
  }

  void addPost(Post post) async {
    return postRepository.addPost(post).then((value) {
      print("${value} record added!");
    });
  }

  void updatePost({required Post post, required int index}) async {
    return postRepository
        .updatePost(post: post, id: index)
        .then((value) => print("$value records updated"));
  }

  void deletePostById(int id) async {
    return postRepository
        .deletePostById(id)
        .then((value) => print("$value records deleted"));
  }

  void filterPostsById(int userId) async {
    return postRepository.filterPostByUserId(userId).then(
          (value) => value.forEach((element) {
            print(element.toJson());
          }),
        );
  }

  void deletePosts() async {
    return postRepository
        .deletePosts()
        .then((value) => print("${value ?? 0} posts deleted"));
  }

  void insertListPosts() async {
    return postRepository.insertListPosts().then((value) => print("inserted"));
  }

  void getDBPath() async {
    return postRepository.getDBPath().then((value) => debugPrint(value));
  }
}
