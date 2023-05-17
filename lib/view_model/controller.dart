import 'package:api_tools_test/injectable.dart';
import 'package:api_tools_test/model/data/repository/retrofit_repository.dart';
import 'package:api_tools_test/model/models/post_model.dart';
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

  void addPost(PostModel post) async {
    return postRepository.addPost(post).then((value) {
      print(value.toJson());
    });
  }

  void updatePost({required PostModel post, required int index}) async {
    return postRepository
        .updatePost(post: post, index: index)
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
