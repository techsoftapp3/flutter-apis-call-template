import 'package:api_tools_test/model/models/post_model.dart';
import 'package:api_tools_test/model/services/retrofit_services.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<PostModel> getPostById(int id);
  Future<List<PostModel>> getPosts();
  Future<PostModel> addPost(PostModel post);
  Future<PostModel> updatePost({required PostModel post, required int index});
  Future<PostModel> deletePost(int id);
  Future<List<PostModel>> filterPostByUserId(int userId);
}

@Singleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(this.remote);
  final PostRemote remote;

  @override
  Future<PostModel> getPostById(int id) async {
    final response = await remote.getPostById(id);
    return response;
  }

  @override
  Future<List<PostModel>> getPosts() async {
    return remote.getPosts();
  }

  @override
  Future<PostModel> addPost(PostModel post) async {
    return remote.addPost(post);
  }

  @override
  Future<PostModel> updatePost(
      {required PostModel post, required int index}) async {
    return remote.updatePost(post, index);
  }

  @override
  Future<PostModel> deletePost(int id) async {
    return remote.deletePost(id);
  }

  @override
  Future<List<PostModel>> filterPostByUserId(int userId) async {
    return remote.filterByUserId(userId);
  }
}
