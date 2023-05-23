import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/retrofit_services.dart';
import 'package:api_tools_test/model/services/database.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<Post> getPostById(int id);
  Future<List<Post>> getPosts();
  Future<Post> addPost(Post post);
  Future<Post> updatePost({required Post post, required int id});
  Future<Post> deletePost(int id);
  Future<List<Post>> filterPostByUserId(int userId);
}

@Singleton(as: PostRepository)
class PostRepositoryImpl implements PostRepository {
  PostRepositoryImpl(this.remote, this.local);
  final PostRemote remote;
  final AppDatabase local;

  @override
  Future<Post> getPostById(int id) async {
    final fromLocal = await local.postDao.getPostsById(id);
    if (fromLocal == null) {
      final response = await remote.getPostById(id);
      local.postDao.insertPost(response);
      return response;
    }
    return fromLocal;
  }

  @override
  Future<List<Post>> getPosts() async {
    final fromLocal = await local.postDao.getAllPost();
    if (fromLocal.isEmpty) {
      final response = await remote.getPosts();
      await local.postDao.insertListPosts(response);
      return response;
    }
    return fromLocal;
  }

  @override
  Future<Post> addPost(Post post) async {
    await local.postDao.insertPost(post);
    return remote.addPost(post);
  }

  @override
  Future<Post> updatePost({required Post post, required int id}) async {
    final fromLocal = await local.postDao.getPostsById(id);
    if (fromLocal == null) {
      await local.postDao.insertPost(post);
    } else {
      await local.postDao.updatePost(post);
    }
    return remote.updatePost(post, id);
  }

  @override
  Future<Post> deletePost(int id) async {
    await local.postDao.deletePost(id);
    return remote.deletePost(id);
  }

  @override
  Future<List<Post>> filterPostByUserId(int userId) async {
    final fromLocal = await local.postDao.getPostByUserId(userId);
    if (fromLocal.isEmpty) {
      final response = await remote.filterByUserId(userId);
      local.postDao.insertListPosts(response);
      return response;
    }
    return fromLocal;
  }
}
