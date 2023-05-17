import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/retrofit_services.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<Post> getPostById(int id);
  Future<List<Post>> getPosts();
  Future<Post> addPost(Post post);
  Future<Post> updatePost({required Post post, required int index});
  Future<Post> deletePost(int id);
  Future<List<Post>> filterPostByUserId(int userId);
}

@Singleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(this.remote);
  final PostRemote remote;

  @override
  Future<Post> getPostById(int id) async {
    final response = await remote.getPostById(id);
    return response;
  }

  @override
  Future<List<Post>> getPosts() async {
    return remote.getPosts();
  }

  @override
  Future<Post> addPost(Post post) async {
    return remote.addPost(post);
  }

  @override
  Future<Post> updatePost({required Post post, required int index}) async {
    return remote.updatePost(post, index);
  }

  @override
  Future<Post> deletePost(int id) async {
    return remote.deletePost(id);
  }

  @override
  Future<List<Post>> filterPostByUserId(int userId) async {
    return remote.filterByUserId(userId);
  }
}
