import 'package:api_tools_test/model/entities/post_model.dart';
import 'package:api_tools_test/model/data_source/remote/retrofit/retrofit_services.dart';
import 'package:api_tools_test/model/services/database.dart';
import 'package:injectable/injectable.dart';

abstract class PostRepository {
  Future<Post> getPostById(int id);
  Future<List<Post>> getPosts();
  Future<List<Post>> filterPostByUserId(int userId);
  Future<int> addPost(Post post);
  Future<int> updatePost({required Post post, required int id});
  Future<int?> deletePostById(int id);
  Future<void> addListPost(List<Post> post);
  Future<int?> deletePosts();
  Future<void> insertListPosts();
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
    // if (fromLocal.isEmpty) {
    //   final response = await remote.getPosts();
    //   await local.postDao.insertListPosts(response);
    //   return response;
    // }
    return fromLocal;
  }

  @override
  Future<void> insertListPosts() async {
    final response = await remote.getPosts();
    await local.postDao.insertListPosts(response);
  }

  @override
  Future<int> addPost(Post post) async {
    remote.addPost(post);
    final response = await local.postDao.insertPost(post);
    return response;
  }

  @override
  Future<int> updatePost({required Post post, required int id}) async {
    remote.updatePost(post, id);
    final fromLocal = await local.postDao.getPostsById(id);
    late int? response;
    if (fromLocal == null) {
      response = await local.postDao.insertPost(post);
    } else {
      response = await local.postDao.updatePost(post);
    }
    return response;
  }

  @override
  Future<int?> deletePostById(int id) async {
    await remote.deletePost(id);
    final response = await local.postDao.deletePostById(id);
    return response ?? 0;
  }

  @override
  Future<List<Post>> filterPostByUserId(int userId) async {
    final fromLocal = await local.postDao.getPostByUserId(userId);
    // if (fromLocal.isEmpty) {
    //   final response = await remote.filterByUserId(userId);
    //   local.postDao.insertListPosts(response);
    //   return response;
    // }
    return fromLocal;
  }

  @override
  Future<void> addListPost(List<Post> posts) {
    return local.postDao.insertListPosts(posts);
  }

  Future<int?> deletePosts() {
    return local.postDao.deletePosts();
  }
}
