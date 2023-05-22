import 'package:api_tools_test/config/injectable.dart';
import 'package:api_tools_test/model/repositories/retrofit_repository.dart';
import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

class MyControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => getIt<MyController>());
  }
}

@injectable
class MyController extends GetxController {
  MyController(this.postRepository);
  final PostRepository postRepository;
  void getPostById(int id) async {
    return postRepository.getPostById(id).then(
          (value) => print(value.toJson()),
        );
  }

  void getPosts() async {
    return postRepository.getPosts().then((value) => value.forEach((element) {
          print(element.toJson());
        }));
  }

  void addPost(Post post) async {
    return postRepository.addPost(post).then((value) {
      print(value.toJson());
    });
  }

  void updatePost({required Post post, required int index}) async {
    return postRepository
        .updatePost(post: post, id: index)
        .then((value) => print(value.toJson()));
  }

  void deletePost(int id) async {
    return postRepository.deletePost(id).then((value) => print(value.toJson()));
  }

  void filterPostsById(int userId) async {
    return postRepository.filterPostByUserId(userId).then(
          (value) => value.forEach((element) {
            print(element.toJson());
          }),
        );
  }

}
